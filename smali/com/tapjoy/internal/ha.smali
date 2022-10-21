.class public final Lcom/tapjoy/internal/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 37
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "Tapjoy"

    .line 1147
    invoke-static {v0, v2, p0, v1}, Lcom/tapjoy/internal/w;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 79
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "Tapjoy"

    const-string p1, "{}: {} {}"

    .line 80
    invoke-static {p0, p1, v0}, Lcom/tapjoy/internal/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 43
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "Tapjoy"

    .line 1157
    invoke-static {v0, v1, p0, p1}, Lcom/tapjoy/internal/w;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    .line 86
    sget-boolean p0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz p0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(ZLjava/lang/String;)Z
    .locals 1

    .line 104
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;)V

    .line 107
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Tapjoy"

    .line 62
    invoke-static {v0, p0}, Lcom/tapjoy/internal/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Tapjoy"

    .line 68
    invoke-static {v0, p0, p1}, Lcom/tapjoy/internal/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static c(Ljava/lang/String;)Z
    .locals 2

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Must be called on the main/ui thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/internal/ha;->a(ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/String;)V
    .locals 1

    .line 154
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Should be called after initializing the SDK"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static e(Ljava/lang/String;)V
    .locals 1

    .line 166
    sget-boolean v0, Lcom/tapjoy/internal/ha;->a:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Should be called after initializing the SDK"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/ha;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
