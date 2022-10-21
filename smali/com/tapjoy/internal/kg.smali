.class public abstract Lcom/tapjoy/internal/kg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/kj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/kg$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Lcom/tapjoy/internal/kg$a;

.field private final c:Lcom/tapjoy/internal/kg$a;

.field private d:Lcom/tapjoy/internal/kj$a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    new-instance v0, Lcom/tapjoy/internal/kg$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/kg$a;-><init>(Lcom/tapjoy/internal/kg;B)V

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->b:Lcom/tapjoy/internal/kg$a;

    .line 45
    new-instance v0, Lcom/tapjoy/internal/kg$a;

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/kg$a;-><init>(Lcom/tapjoy/internal/kg;B)V

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->c:Lcom/tapjoy/internal/kg$a;

    .line 51
    sget-object v0, Lcom/tapjoy/internal/kj$a;->a:Lcom/tapjoy/internal/kj$a;

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    .line 57
    iput-boolean v1, p0, Lcom/tapjoy/internal/kg;->e:Z

    return-void
.end method

.method private g()Lcom/tapjoy/internal/ki;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/ki<",
            "Lcom/tapjoy/internal/kj$a;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->a:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_0

    .line 107
    sget-object v0, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    .line 108
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->b:Lcom/tapjoy/internal/kg$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->c:Lcom/tapjoy/internal/kg$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->b:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/tapjoy/internal/kg;->e:Z

    .line 112
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->b:Lcom/tapjoy/internal/kg$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->d:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->c:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_2

    .line 114
    sget-object v0, Lcom/tapjoy/internal/kj$a;->d:Lcom/tapjoy/internal/kj$a;

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    .line 115
    invoke-virtual {p0}, Lcom/tapjoy/internal/kg;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 119
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/kg;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->c:Lcom/tapjoy/internal/kg$a;

    return-object v0

    :catchall_1
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 198
    invoke-static {p1}, Lcom/tapjoy/internal/jt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->b:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->b:Lcom/tapjoy/internal/kg$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Throwable;)Z

    .line 204
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->c:Lcom/tapjoy/internal/kg$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->d:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->c:Lcom/tapjoy/internal/kg$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->c:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->c:Lcom/tapjoy/internal/kg$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed while running"

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->a:Lcom/tapjoy/internal/kj$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    if-eq v0, v1, :cond_3

    .line 213
    :goto_0
    sget-object p1, Lcom/tapjoy/internal/kj$a;->f:Lcom/tapjoy/internal/kj$a;

    iput-object p1, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object p1, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 211
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed while in state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 215
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected abstract b()V
.end method

.method protected final c()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->b:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_1

    .line 155
    sget-object v0, Lcom/tapjoy/internal/kj$a;->c:Lcom/tapjoy/internal/kj$a;

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    .line 156
    iget-boolean v0, p0, Lcom/tapjoy/internal/kg;->e:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/tapjoy/internal/kg;->g()Lcom/tapjoy/internal/ki;

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->b:Lcom/tapjoy/internal/kg$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->c:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 149
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/kg;->a(Ljava/lang/Throwable;)V

    .line 152
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 162
    iget-object v1, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected final d()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->d:Lcom/tapjoy/internal/kj$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->c:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/kg;->a(Ljava/lang/Throwable;)V

    .line 181
    throw v0

    .line 184
    :cond_1
    :goto_0
    sget-object v0, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    .line 185
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->c:Lcom/tapjoy/internal/kg$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kf;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final e()Lcom/tapjoy/internal/ki;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/ki<",
            "Lcom/tapjoy/internal/kj$a;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->a:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/tapjoy/internal/kj$a;->b:Lcom/tapjoy/internal/kj$a;

    iput-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    .line 90
    invoke-virtual {p0}, Lcom/tapjoy/internal/kg;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 94
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/kg;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->b:Lcom/tapjoy/internal/kg$a;

    return-object v0

    :catchall_1
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final f()Lcom/tapjoy/internal/kj$a;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/kg;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;

    sget-object v1, Lcom/tapjoy/internal/kj$a;->b:Lcom/tapjoy/internal/kj$a;

    if-ne v0, v1, :cond_0

    .line 229
    sget-object v0, Lcom/tapjoy/internal/kj$a;->d:Lcom/tapjoy/internal/kj$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 231
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/kg;->d:Lcom/tapjoy/internal/kj$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 234
    iget-object v1, p0, Lcom/tapjoy/internal/kg;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/internal/kg;->f()Lcom/tapjoy/internal/kj$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
