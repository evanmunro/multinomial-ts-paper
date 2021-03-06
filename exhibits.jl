using Distributions, Plots
d = Beta(0.7)
x = range(0,1,length=1000)
y1 = pdf.(d,x)
d = Beta(1)
y2 = pdf.(d,x)
d = Beta(10)
y3 = pdf.(d,x)
plot(x,[y1 y2 y3],xlabel="Value",ylabel="Density",labels=["\\alpha=0.7","\\alpha=1","\\alpha=10"])
savefig("exhibits/dirichlet_density.pdf")
