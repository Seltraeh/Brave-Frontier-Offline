.class final Lcom/tapjoy/internal/hi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/iu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hi;->a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/he;

.field final synthetic c:Lcom/tapjoy/internal/hi;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hi;Landroid/app/Activity;Lcom/tapjoy/internal/he;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    iput-object p2, p0, Lcom/tapjoy/internal/hi$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/hi$4;->b:Lcom/tapjoy/internal/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    invoke-static {v0}, Lcom/tapjoy/internal/hi;->e(Lcom/tapjoy/internal/hi;)Lcom/tapjoy/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->cancel()V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/hw;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    iget-object v0, v0, Lcom/tapjoy/internal/hk;->g:Lcom/tapjoy/internal/ft;

    instance-of v1, v0, Lcom/tapjoy/internal/fx;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Lcom/tapjoy/internal/fx;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, v0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fp;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/tapjoy/internal/ft;->a()Lcom/tapjoy/internal/gj$a;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    invoke-static {v0}, Lcom/tapjoy/internal/hi;->c(Lcom/tapjoy/internal/hi;)Lcom/tapjoy/internal/hd;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    iget-object v1, v1, Lcom/tapjoy/internal/hi;->b:Lcom/tapjoy/internal/hy;

    iget-object v1, v1, Lcom/tapjoy/internal/hy;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/hw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hd;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/hw;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    iget-object v0, p1, Lcom/tapjoy/internal/hw;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    iget-object v0, v0, Lcom/tapjoy/internal/hk;->e:Lcom/tapjoy/internal/gw;

    iget-object v1, p0, Lcom/tapjoy/internal/hi$4;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/hw;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/hw;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/ju;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/hk;->d:Z

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->b:Lcom/tapjoy/internal/he;

    iget-object v1, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    iget-object v1, v1, Lcom/tapjoy/internal/hi;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/hw;->g:Lcom/tapjoy/internal/gp;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    .line 241
    iget-boolean p1, p1, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    invoke-static {p1}, Lcom/tapjoy/internal/hi;->e(Lcom/tapjoy/internal/hi;)Lcom/tapjoy/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/tapjoy/internal/hi$4;->c:Lcom/tapjoy/internal/hi;

    invoke-static {v0}, Lcom/tapjoy/internal/hi;->d(Lcom/tapjoy/internal/hi;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hi;->a(Lcom/tapjoy/internal/hi;Z)Z

    return-void
.end method
