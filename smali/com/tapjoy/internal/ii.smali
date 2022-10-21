.class public final Lcom/tapjoy/internal/ii;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field public b:I

.field c:I

.field d:Lcom/tapjoy/internal/ih;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ih;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/tapjoy/internal/ii;->a:[I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/tapjoy/internal/ii;->b:I

    .line 33
    iput v0, p0, Lcom/tapjoy/internal/ii;->c:I

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/ii;->e:Ljava/util/List;

    .line 55
    iput v0, p0, Lcom/tapjoy/internal/ii;->m:I

    return-void
.end method
