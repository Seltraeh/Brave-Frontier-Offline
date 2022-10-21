.class final Lcom/tapjoy/internal/gf$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gf$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/tapjoy/internal/gf$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gf$b;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/tapjoy/internal/gf$b$1;->b:Lcom/tapjoy/internal/gf$b;

    iput-object p2, p0, Lcom/tapjoy/internal/gf$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 305
    sget-object p1, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fv$a;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 306
    iget-object p1, p0, Lcom/tapjoy/internal/gf$b$1;->b:Lcom/tapjoy/internal/gf$b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/tapjoy/internal/gf$b;->a(Lcom/tapjoy/internal/gf$b;Z)Z

    .line 307
    iget-object p1, p0, Lcom/tapjoy/internal/gf$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
