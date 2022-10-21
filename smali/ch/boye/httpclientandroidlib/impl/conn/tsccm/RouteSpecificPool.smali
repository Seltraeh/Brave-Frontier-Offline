.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

.field protected final freeEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected final maxEntries:I

.field protected numEntries:I

.field protected final route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

.field protected final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 81
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    .line 82
    iput p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    .line 83
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;

    invoke-direct {p1, p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    .line 88
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    .line 89
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 101
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    .line 102
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    .line 103
    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;->getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    .line 104
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    .line 105
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method


# virtual methods
.method public allocEntry(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
    .locals 3

    .line 171
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 173
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    .line 175
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-object v1

    .line 181
    :cond_2
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 182
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    .line 183
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->shutdownEntry()V

    .line 184
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 186
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public createdEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry not planned for this pool.\npool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nplan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)Z
    .locals 1

    .line 249
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    :cond_0
    return p1
.end method

.method public dropEntry()V
    .locals 2

    .line 263
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 267
    iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no entry that could be dropped."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 2

    .line 204
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 208
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry allocated from this pool. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry created for this pool. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCapacity()I
    .locals 2

    .line 149
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;->getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I

    move-result v0

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getEntryCount()I
    .locals 1

    .line 161
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return v0
.end method

.method public final getMaxEntries()I
    .locals 1

    .line 126
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    return v0
.end method

.method public final getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    .line 116
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-object v0
.end method

.method public hasThread()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUnused()Z
    .locals 2

    .line 139
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextThread()Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
    .locals 1

    .line 305
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    return-object v0
.end method

.method public queueThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 281
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Waiting thread must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
