# Ground Builder

An experiment to randomly generate worlds.

Will add more here as the experiment takes shape.

# The Idea

We want to create a map of randomly generated terrain.

# Map

We start with a Map, which is composed of Rows.
A Row is composed of Columns.
A Column is composed of Points.

The Map effectively makes a grid of Points.

# Point

A Point has an Affinity for a single Element. The Point's Affinity for that
Element is 1.0.

The Affinity will be used in the future for settling. See below for details.

# Elements

There are three Elements:

- Soil
- Stone
- Water

The world will be initially composed of these three elements.

# Building the Ground

What we want to build up is a map of Elements that each Point has.

To simulate the world's living and the map accumulating elements over time, we
have a Lifecycle.  The Lifecycle drops a random bit of an Element on a random
Point for a certain number iterations.

At the end of the Lifecycle, the world has all the bits of Elements that have
been dropped randomly around. This is our randomly generated terrain and
world.

# Future Plans

# Affinity

An Affinity means the likelihood that the Element will be kept by a Point.

In the future, the Settler will process the randomly dropped Elements

 This mean the Point will want to keep
 type of Element.

# Settler and Affinity

In the future, we'll be able to settle the Elements in the map based on the affinities.

After an Element is dropped, we'll use the Settler on the map.

The Settler will look at Points and decide if the Point has an Affinity for
the Elements it has on it. If it has an Affinity for that Element, it'll keep
it. If it doesn't have an Affinity for that Element, it'll randomly give it to
a neighbor.

Currently, a Point's Affinity for a single Element is 1. This means the Point will
always keep one type of Element and always get rid of the other Element types
that land on it.

This settling will continue until the Element has found a place to
live, a Point with an Affinity for it.

# Affinities

Note: In the future, Points should have Affinities, which will be a likelihood
of retaining each kind of Element. Right now, that's a complication we don't
need. There's an Affinities class which has been deleted for now, but could be
resurrected.

## License

MIT

