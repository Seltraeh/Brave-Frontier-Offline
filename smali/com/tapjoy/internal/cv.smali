.class public final enum Lcom/tapjoy/internal/cv;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/cv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/cv;

.field public static final enum b:Lcom/tapjoy/internal/cv;

.field public static final enum c:Lcom/tapjoy/internal/cv;

.field private static final synthetic e:[Lcom/tapjoy/internal/cv;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/tapjoy/internal/cv;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/cv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cv;->a:Lcom/tapjoy/internal/cv;

    new-instance v0, Lcom/tapjoy/internal/cv;

    const-string v1, "JAVASCRIPT"

    const/4 v3, 0x1

    const-string v4, "javascript"

    invoke-direct {v0, v1, v3, v4}, Lcom/tapjoy/internal/cv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cv;->b:Lcom/tapjoy/internal/cv;

    new-instance v0, Lcom/tapjoy/internal/cv;

    const-string v1, "NONE"

    const/4 v4, 0x2

    const-string v5, "none"

    invoke-direct {v0, v1, v4, v5}, Lcom/tapjoy/internal/cv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cv;->c:Lcom/tapjoy/internal/cv;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tapjoy/internal/cv;

    sget-object v5, Lcom/tapjoy/internal/cv;->a:Lcom/tapjoy/internal/cv;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tapjoy/internal/cv;->b:Lcom/tapjoy/internal/cv;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tapjoy/internal/cv;->e:[Lcom/tapjoy/internal/cv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tapjoy/internal/cv;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/cv;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/cv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/cv;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/cv;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/cv;->e:[Lcom/tapjoy/internal/cv;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/cv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/cv;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/cv;->d:Ljava/lang/String;

    return-object v0
.end method
