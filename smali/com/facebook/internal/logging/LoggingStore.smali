.class public interface abstract Lcom/facebook/internal/logging/LoggingStore;
.super Ljava/lang/Object;
.source "LoggingStore.java"


# virtual methods
.method public abstract readAndClearStore()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveLogsToDisk(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;)V"
        }
    .end annotation
.end method
