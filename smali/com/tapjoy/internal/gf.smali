.class public abstract Lcom/tapjoy/internal/gf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gf$b;,
        Lcom/tapjoy/internal/gf$a;,
        Lcom/tapjoy/internal/gf$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field volatile b:I

.field c:Lcom/tapjoy/internal/gf$b;

.field d:J

.field e:Lcom/tapjoy/internal/gf$a;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tapjoy/TJConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/tapjoy/internal/gf$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->f:Ljava/util/concurrent/locks/Condition;

    .line 50
    sget v0, Lcom/tapjoy/internal/gf$c;->a:I

    iput v0, p0, Lcom/tapjoy/internal/gf;->b:I

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->g:Ljava/util/LinkedList;

    const-wide/16 v0, 0x3e8

    .line 55
    iput-wide v0, p0, Lcom/tapjoy/internal/gf;->d:J

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gf;Z)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gf;->a(Z)V

    return-void
.end method


# virtual methods
.method final a()Lcom/tapjoy/internal/gf$a;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/gf$a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/gf$a;

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->e:Lcom/tapjoy/internal/gf$a;

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/gf$a;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->e:Lcom/tapjoy/internal/gf$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    throw v0
.end method

.method final a(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    :try_start_0
    iput p1, p0, Lcom/tapjoy/internal/gf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object p1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    throw p1
.end method

.method final a(Z)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 194
    iget-object p1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 191
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->g:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    iget-object v1, p0, Lcom/tapjoy/internal/gf;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    iget-object v1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJConnectListener;

    if-eqz p1, :cond_1

    .line 199
    invoke-interface {v1}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-interface {v1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 194
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final a(J)Z
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 229
    :try_start_0
    sget v1, Lcom/tapjoy/internal/gf$c;->d:I

    sget v2, Lcom/tapjoy/internal/gf$c;->c:I

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/gf;->a(I)V

    .line 230
    iget-object v1, p0, Lcom/tapjoy/internal/gf;->f:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x3e8

    .line 231
    iput-wide p1, p0, Lcom/tapjoy/internal/gf;->d:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :catch_0
    :cond_0
    sget p1, Lcom/tapjoy/internal/gf$c;->c:I

    sget p2, Lcom/tapjoy/internal/gf$c;->d:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gf;->a(I)V

    .line 239
    iget-object p1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    .line 238
    sget p2, Lcom/tapjoy/internal/gf$c;->c:I

    sget v0, Lcom/tapjoy/internal/gf$c;->d:I

    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/gf;->a(I)V

    .line 239
    iget-object p2, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 240
    throw p1
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation
.end method

.method final b()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x3e8

    .line 218
    :try_start_0
    iput-wide v0, p0, Lcom/tapjoy/internal/gf;->d:J

    .line 219
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    throw v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p4, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->g:Ljava/util/LinkedList;

    const-class v1, Lcom/tapjoy/TJConnectListener;

    invoke-static {p4, v1}, Lcom/tapjoy/internal/fq;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 72
    :cond_0
    new-instance p4, Lcom/tapjoy/internal/gf$a;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/tapjoy/internal/gf$a;-><init>(Lcom/tapjoy/internal/gf;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 75
    sget-object p1, Lcom/tapjoy/internal/gf$3;->a:[I

    iget p2, p0, Lcom/tapjoy/internal/gf;->b:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    aget p1, p1, p2

    if-eq p1, p3, :cond_5

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    .line 98
    sget p1, Lcom/tapjoy/internal/gf$c;->a:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gf;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 91
    :cond_1
    :try_start_1
    iput-object p4, p0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/gf$a;

    .line 92
    invoke-virtual {p0}, Lcom/tapjoy/internal/gf;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_1
    iget-object p1, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p3

    .line 88
    :cond_2
    :try_start_2
    iput-object p4, p0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/gf$a;

    goto :goto_1

    .line 1141
    :cond_3
    iput-object p4, p0, Lcom/tapjoy/internal/gf;->e:Lcom/tapjoy/internal/gf$a;

    .line 1143
    sget-object p1, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fv$a;

    new-instance p2, Lcom/tapjoy/internal/gf$1;

    invoke-direct {p2, p0}, Lcom/tapjoy/internal/gf$1;-><init>(Lcom/tapjoy/internal/gf;)V

    invoke-virtual {p1, p2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 1155
    iget-object p1, p4, Lcom/tapjoy/internal/gf$a;->a:Landroid/content/Context;

    iget-object p2, p4, Lcom/tapjoy/internal/gf$a;->b:Ljava/lang/String;

    iget-object p4, p4, Lcom/tapjoy/internal/gf$a;->c:Ljava/util/Hashtable;

    new-instance v1, Lcom/tapjoy/internal/gf$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/gf$2;-><init>(Lcom/tapjoy/internal/gf;)V

    .line 1156
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 81
    sget p1, Lcom/tapjoy/internal/gf$c;->b:I

    sget p2, Lcom/tapjoy/internal/gf$c;->a:I

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gf;->a(I)V

    goto :goto_1

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/tapjoy/internal/gf;->g:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 77
    :cond_5
    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/gf;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 102
    iget-object p2, p0, Lcom/tapjoy/internal/gf;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
