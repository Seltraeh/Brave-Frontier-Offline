.class public final enum Lcom/tapjoy/internal/ej;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/ej;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/ej;

.field public static final enum b:Lcom/tapjoy/internal/ej;

.field public static final enum c:Lcom/tapjoy/internal/ej;

.field public static final enum d:Lcom/tapjoy/internal/ej;

.field private static final synthetic f:[Lcom/tapjoy/internal/ej;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/tapjoy/internal/ej;

    const-string v1, "VARINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/ej;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/ej;->a:Lcom/tapjoy/internal/ej;

    new-instance v0, Lcom/tapjoy/internal/ej;

    const-string v1, "FIXED64"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/tapjoy/internal/ej;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/ej;->b:Lcom/tapjoy/internal/ej;

    new-instance v0, Lcom/tapjoy/internal/ej;

    const-string v1, "LENGTH_DELIMITED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/tapjoy/internal/ej;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/ej;

    new-instance v0, Lcom/tapjoy/internal/ej;

    const-string v1, "FIXED32"

    const/4 v5, 0x3

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/tapjoy/internal/ej;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/ej;->d:Lcom/tapjoy/internal/ej;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tapjoy/internal/ej;

    .line 21
    sget-object v6, Lcom/tapjoy/internal/ej;->a:Lcom/tapjoy/internal/ej;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tapjoy/internal/ej;->b:Lcom/tapjoy/internal/ej;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/ej;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tapjoy/internal/ej;->f:[Lcom/tapjoy/internal/ej;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/tapjoy/internal/ej;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/ej;
    .locals 1

    .line 21
    const-class v0, Lcom/tapjoy/internal/ej;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/ej;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/ej;
    .locals 1

    .line 21
    sget-object v0, Lcom/tapjoy/internal/ej;->f:[Lcom/tapjoy/internal/ej;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/ej;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/ej;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/em;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/em<",
            "*>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/tapjoy/internal/ej$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/tapjoy/internal/em;->q:Lcom/tapjoy/internal/em;

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/em;->l:Lcom/tapjoy/internal/em;

    return-object v0

    .line 50
    :cond_2
    sget-object v0, Lcom/tapjoy/internal/em;->g:Lcom/tapjoy/internal/em;

    return-object v0

    .line 48
    :cond_3
    sget-object v0, Lcom/tapjoy/internal/em;->j:Lcom/tapjoy/internal/em;

    return-object v0
.end method
