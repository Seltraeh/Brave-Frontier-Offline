.class final Lcom/tapjoy/internal/gz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/is$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gz;->a(Landroid/app/Activity;Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/fz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/he;

.field final synthetic c:Lcom/tapjoy/internal/gz;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gz;Landroid/app/Activity;Lcom/tapjoy/internal/he;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    iput-object p2, p0, Lcom/tapjoy/internal/gz$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/gz$2;->b:Lcom/tapjoy/internal/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    invoke-static {v0}, Lcom/tapjoy/internal/gz;->a(Lcom/tapjoy/internal/gz;)V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/id;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    iget-object v0, v0, Lcom/tapjoy/internal/hk;->g:Lcom/tapjoy/internal/ft;

    instance-of v1, v0, Lcom/tapjoy/internal/fy;

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Lcom/tapjoy/internal/fy;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, v0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fp;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/tapjoy/internal/ft;->a()Lcom/tapjoy/internal/gj$a;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    invoke-static {v0}, Lcom/tapjoy/internal/gz;->b(Lcom/tapjoy/internal/gz;)Lcom/tapjoy/internal/hd;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    iget-object v1, v1, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hv;

    iget-object v1, v1, Lcom/tapjoy/internal/hv;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/id;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hd;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lcom/tapjoy/internal/id;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    iget-object v0, v0, Lcom/tapjoy/internal/hk;->e:Lcom/tapjoy/internal/gw;

    iget-object v1, p0, Lcom/tapjoy/internal/gz$2;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/id;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/id;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/ju;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/hk;->d:Z

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p1, Lcom/tapjoy/internal/id;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/gz$2;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/id;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gz$2;->b:Lcom/tapjoy/internal/he;

    iget-object v1, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    iget-object v1, v1, Lcom/tapjoy/internal/gz;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Lcom/tapjoy/internal/gp;)V

    .line 157
    iget-boolean p1, p1, Lcom/tapjoy/internal/id;->j:Z

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/tapjoy/internal/gz$2;->c:Lcom/tapjoy/internal/gz;

    invoke-static {p1}, Lcom/tapjoy/internal/gz;->a(Lcom/tapjoy/internal/gz;)V

    :cond_3
    return-void
.end method
