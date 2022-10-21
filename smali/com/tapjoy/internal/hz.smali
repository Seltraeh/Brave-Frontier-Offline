.class public final Lcom/tapjoy/internal/hz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/hz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/tapjoy/internal/ib;

.field public final b:Landroid/graphics/Point;

.field public final c:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/tapjoy/internal/hz$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hz$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hz;->d:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/ib;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tapjoy/internal/hz;->a:Lcom/tapjoy/internal/ib;

    .line 19
    iput-object p2, p0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Point;

    .line 20
    iput-object p3, p0, Lcom/tapjoy/internal/hz;->c:Landroid/graphics/Point;

    return-void
.end method
