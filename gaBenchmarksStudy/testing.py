import sys
import array
import random
from deap import base
from deap import creator
from deap import tools
import fgeneric
import numpy as np
from operator import attrgetter
import bbobbenchmarks as bn
toolbox = base.Toolbox()
creator.create("FitnessMin", base.Fitness, weights=(-1.0,))
creator.create("Individual", array.array, typecode="d",
               fitness=creator.FitnessMin)
def tupleize(func):
    """A decorator that tuple-ize the result of a function. This is useful
    when the evaluation function returns a single value.
    """
    def wrapper(*args, **kargs):
        return func(*args, **kargs),
    return wrapper

toolbox.register("attr_float", random.random)
toolbox.register("select", tools.selTournament, tournsize=2)
toolbox.register(
    "mutate",
    tools.mutGaussian,
    mu=0,
    sigma=1,
    indpb=0.1
)
n_aval=4000
NGEN=50
stats = tools.Statistics(key=lambda ind: ind.fitness.values)
stats.register("avg", np.mean)
stats.register("std", np.std)
stats.register("min", np.min)
stats.register("max", np.max)
# calculating the number of individuals of the
# populations based on the number of executions
y = int(n_aval / NGEN)
x = n_aval - y * NGEN
n = x + y


toolbox.register("evaluate", func)
toolbox.decorate("evaluate", tupleize)
toolbox.register("attr_float", random.uniform, -5, 5)
toolbox.register("mate", tools.cxSimulatedBinaryBounded, eta = 0, low= -5, up = 5)
toolbox.register("individual", tools.initRepeat, creator.Individual,
                 toolbox.attr_float, dim)
toolbox.register("population", tools.initRepeat, list, toolbox.individual)

logbook = tools.Logbook()
logbook.header = "gen", "min", "avg", "max", "std"


pop = toolbox.population(n)
fitnesses = list(toolbox.map(toolbox.evaluate, pop))
for ind, fit in zip(pop, fitnesses):
    ind.fitness.values = fit

offspring = toolbox.select(pop, len(pop))			
fitnesses = list(toolbox.map(toolbox.evaluate, offspring))
for ind, fit in zip(offspring, fitnesses):
    ind.fitness.values = fit

best_pop = tools.selBest(pop, 1)[0]
offspring = sorted(offspring, key=attrgetter("fitness"))
offspring[0] = best_pop
test = sorted(offspring+pop, key=attrgetter("fitness"))
offspring[:] = test[n:n+n]

offspring = sorted(offspring, key=attrgetter("fitness"))
pop = sorted(pop, key=attrgetter("fitness"))
for fit_off, fit_pop in zip(offspring, pop):
	print(fit_off.fitness.values, fit_pop.fitness.values)


