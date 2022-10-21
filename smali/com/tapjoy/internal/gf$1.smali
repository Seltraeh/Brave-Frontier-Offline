.class final Lcom/tapjoy/internal/gf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gf;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gf;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tapjoy/internal/gf$1;->a:Lcom/tapjoy/internal/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 146
    sget-object p1, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fv$a;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 147
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/tapjoy/internal/gf$1;->a:Lcom/tapjoy/internal/gf;

    .line 1032
    iget-object p2, p1, Lcom/tapjoy/internal/gf;->e:Lcom/tapjoy/internal/gf$a;

    if-eqz p2, :cond_0

    .line 148
    iget-object p2, p2, Lcom/tapjoy/internal/gf$a;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 149
    new-instance p2, Lcom/tapjoy/internal/gf$b;

    iget-object v0, p0, Lcom/tapjoy/internal/gf$1;->a:Lcom/tapjoy/internal/gf;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/tapjoy/internal/gf$b;-><init>(Lcom/tapjoy/internal/gf;B)V

    .line 3032
    iput-object p2, p1, Lcom/tapjoy/internal/gf;->c:Lcom/tapjoy/internal/gf$b;

    .line 150
    iget-object p1, p0, Lcom/tapjoy/internal/gf$1;->a:Lcom/tapjoy/internal/gf;

    .line 4032
    iget-object p1, p1, Lcom/tapjoy/internal/gf;->c:Lcom/tapjoy/internal/gf$b;

    .line 150
    invoke-virtual {p1}, Lcom/tapjoy/internal/ke;->e()Lcom/tapjoy/internal/ki;

    :cond_0
    return-void
.end method
