.class public final Lcom/tapjoy/internal/ga;
.super Lcom/tapjoy/internal/ho;
.source "SourceFile"


# instance fields
.field private final b:Lcom/tapjoy/internal/gd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gd<",
            "Lcom/tapjoy/internal/ho$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/tapjoy/internal/ga;

    invoke-direct {v0}, Lcom/tapjoy/internal/ga;-><init>()V

    invoke-static {v0}, Lcom/tapjoy/internal/ho;->a(Lcom/tapjoy/internal/ho;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/tapjoy/internal/ho;-><init>()V

    .line 26
    new-instance v0, Lcom/tapjoy/internal/ga$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ga$1;-><init>(Lcom/tapjoy/internal/ga;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ga;->b:Lcom/tapjoy/internal/gd;

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/ho$a;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->b:Lcom/tapjoy/internal/gd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gd;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->b:Lcom/tapjoy/internal/gd;

    .line 1027
    iget-object v0, v0, Lcom/tapjoy/internal/gd;->b:Lcom/tapjoy/internal/gd$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
