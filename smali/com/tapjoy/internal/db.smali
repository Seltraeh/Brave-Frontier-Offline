.class public final enum Lcom/tapjoy/internal/db;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/db;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/db;

.field public static final enum b:Lcom/tapjoy/internal/db;

.field public static final enum c:Lcom/tapjoy/internal/db;

.field public static final enum d:Lcom/tapjoy/internal/db;

.field private static final synthetic f:[Lcom/tapjoy/internal/db;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tapjoy/internal/db;

    const-string v1, "PREROLL"

    const/4 v2, 0x0

    const-string v3, "preroll"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/db;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/db;->a:Lcom/tapjoy/internal/db;

    new-instance v0, Lcom/tapjoy/internal/db;

    const-string v1, "MIDROLL"

    const/4 v3, 0x1

    const-string v4, "midroll"

    invoke-direct {v0, v1, v3, v4}, Lcom/tapjoy/internal/db;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/db;->b:Lcom/tapjoy/internal/db;

    new-instance v0, Lcom/tapjoy/internal/db;

    const-string v1, "POSTROLL"

    const/4 v4, 0x2

    const-string v5, "postroll"

    invoke-direct {v0, v1, v4, v5}, Lcom/tapjoy/internal/db;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/db;->c:Lcom/tapjoy/internal/db;

    new-instance v0, Lcom/tapjoy/internal/db;

    const-string v1, "STANDALONE"

    const/4 v5, 0x3

    const-string v6, "standalone"

    invoke-direct {v0, v1, v5, v6}, Lcom/tapjoy/internal/db;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/db;->d:Lcom/tapjoy/internal/db;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tapjoy/internal/db;

    sget-object v6, Lcom/tapjoy/internal/db;->a:Lcom/tapjoy/internal/db;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tapjoy/internal/db;->b:Lcom/tapjoy/internal/db;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tapjoy/internal/db;->c:Lcom/tapjoy/internal/db;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tapjoy/internal/db;->f:[Lcom/tapjoy/internal/db;

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

    iput-object p3, p0, Lcom/tapjoy/internal/db;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/db;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/db;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/db;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/db;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/db;->f:[Lcom/tapjoy/internal/db;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/db;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/db;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/db;->e:Ljava/lang/String;

    return-object v0
.end method
