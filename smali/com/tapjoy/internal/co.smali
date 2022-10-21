.class public final Lcom/tapjoy/internal/co;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tapjoy/internal/cv;

.field public final b:Lcom/tapjoy/internal/cv;

.field final c:Z

.field final d:Lcom/tapjoy/internal/cr;

.field final e:Lcom/tapjoy/internal/cu;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/cr;Lcom/tapjoy/internal/cu;Lcom/tapjoy/internal/cv;Lcom/tapjoy/internal/cv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/co;->d:Lcom/tapjoy/internal/cr;

    iput-object p2, p0, Lcom/tapjoy/internal/co;->e:Lcom/tapjoy/internal/cu;

    iput-object p3, p0, Lcom/tapjoy/internal/co;->a:Lcom/tapjoy/internal/cv;

    if-nez p4, :cond_0

    sget-object p1, Lcom/tapjoy/internal/cv;->c:Lcom/tapjoy/internal/cv;

    iput-object p1, p0, Lcom/tapjoy/internal/co;->b:Lcom/tapjoy/internal/cv;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/tapjoy/internal/co;->b:Lcom/tapjoy/internal/cv;

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/co;->c:Z

    return-void
.end method
