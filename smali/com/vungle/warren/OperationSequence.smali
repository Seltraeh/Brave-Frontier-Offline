.class Lcom/vungle/warren/OperationSequence;
.super Ljava/lang/Object;
.source "OperationSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/OperationSequence$Entry;,
        Lcom/vungle/warren/OperationSequence$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/vungle/warren/OperationSequence$Callback;

.field private currentId:Ljava/lang/String;

.field private loadOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/vungle/warren/OperationSequence$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/vungle/warren/OperationSequence$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/OperationSequence$1;-><init>(Lcom/vungle/warren/OperationSequence;)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/vungle/warren/OperationSequence;->currentId:Ljava/lang/String;

    return-void
.end method

.method private get(Ljava/lang/String;)Lcom/vungle/warren/OperationSequence$Entry;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/OperationSequence$Entry;

    .line 75
    iget-object v2, v1, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vungle/warren/OperationSequence;->get(Ljava/lang/String;)Lcom/vungle/warren/OperationSequence$Entry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public init(Lcom/vungle/warren/OperationSequence$Callback;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/OperationSequence$Callback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/vungle/warren/OperationSequence;->callback:Lcom/vungle/warren/OperationSequence$Callback;

    .line 69
    iput-object p2, p0, Lcom/vungle/warren/OperationSequence;->loadOperations:Ljava/util/Map;

    return-void
.end method

.method declared-synchronized offer(Lcom/vungle/warren/AdLoader$Operation;)V
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->loadOperations:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v0, :cond_0

    .line 97
    iget v1, v0, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    .line 98
    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdLoader$Operation;->merge(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 99
    iget p1, v0, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    if-ge p1, v1, :cond_4

    .line 100
    iget-object p1, p0, Lcom/vungle/warren/OperationSequence;->callback:Lcom/vungle/warren/OperationSequence$Callback;

    invoke-interface {p1, v0}, Lcom/vungle/warren/OperationSequence$Callback;->onChangePriority(Lcom/vungle/warren/AdLoader$Operation;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vungle/warren/OperationSequence;->get(Ljava/lang/String;)Lcom/vungle/warren/OperationSequence$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, v0, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    invoke-virtual {v1, p1}, Lcom/vungle/warren/AdLoader$Operation;->merge(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 107
    iget-object p1, v0, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    .line 110
    :cond_1
    iget v1, p1, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    if-gtz v1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->callback:Lcom/vungle/warren/OperationSequence$Callback;

    invoke-interface {v0, p1}, Lcom/vungle/warren/OperationSequence$Callback;->onLoadNext(Lcom/vungle/warren/AdLoader$Operation;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    if-nez v0, :cond_3

    new-instance v0, Lcom/vungle/warren/OperationSequence$Entry;

    invoke-direct {v0, p1}, Lcom/vungle/warren/OperationSequence$Entry;-><init>(Lcom/vungle/warren/AdLoader$Operation;)V

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lcom/vungle/warren/OperationSequence;->reportFinished(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iput-object v0, p0, Lcom/vungle/warren/OperationSequence;->currentId:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/OperationSequence$Entry;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, v1, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized reportFinished(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->currentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->currentId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/vungle/warren/OperationSequence;->currentId:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/vungle/warren/OperationSequence;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/OperationSequence$Entry;

    if-eqz p1, :cond_1

    .line 129
    iget-object v0, p1, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/OperationSequence;->currentId:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->callback:Lcom/vungle/warren/OperationSequence$Callback;

    iget-object p1, p1, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    invoke-interface {v0, p1}, Lcom/vungle/warren/OperationSequence$Callback;->onLoadNext(Lcom/vungle/warren/AdLoader$Operation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
