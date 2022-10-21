.class final enum Lcom/tapjoy/internal/bl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/bl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/bl;

.field public static final enum b:Lcom/tapjoy/internal/bl;

.field public static final enum c:Lcom/tapjoy/internal/bl;

.field public static final enum d:Lcom/tapjoy/internal/bl;

.field public static final enum e:Lcom/tapjoy/internal/bl;

.field public static final enum f:Lcom/tapjoy/internal/bl;

.field public static final enum g:Lcom/tapjoy/internal/bl;

.field public static final enum h:Lcom/tapjoy/internal/bl;

.field private static final synthetic i:[Lcom/tapjoy/internal/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->a:Lcom/tapjoy/internal/bl;

    .line 35
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->b:Lcom/tapjoy/internal/bl;

    .line 41
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "EMPTY_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->c:Lcom/tapjoy/internal/bl;

    .line 47
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "DANGLING_NAME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->d:Lcom/tapjoy/internal/bl;

    .line 53
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->e:Lcom/tapjoy/internal/bl;

    .line 58
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->f:Lcom/tapjoy/internal/bl;

    .line 63
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->g:Lcom/tapjoy/internal/bl;

    .line 68
    new-instance v0, Lcom/tapjoy/internal/bl;

    const-string v1, "CLOSED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/tapjoy/internal/bl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bl;->h:Lcom/tapjoy/internal/bl;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/tapjoy/internal/bl;

    .line 23
    sget-object v10, Lcom/tapjoy/internal/bl;->a:Lcom/tapjoy/internal/bl;

    aput-object v10, v1, v2

    sget-object v2, Lcom/tapjoy/internal/bl;->b:Lcom/tapjoy/internal/bl;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tapjoy/internal/bl;->c:Lcom/tapjoy/internal/bl;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tapjoy/internal/bl;->d:Lcom/tapjoy/internal/bl;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tapjoy/internal/bl;->e:Lcom/tapjoy/internal/bl;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tapjoy/internal/bl;->f:Lcom/tapjoy/internal/bl;

    aput-object v2, v1, v7

    sget-object v2, Lcom/tapjoy/internal/bl;->g:Lcom/tapjoy/internal/bl;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/tapjoy/internal/bl;->i:[Lcom/tapjoy/internal/bl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/bl;
    .locals 1

    .line 23
    const-class v0, Lcom/tapjoy/internal/bl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/bl;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/bl;
    .locals 1

    .line 23
    sget-object v0, Lcom/tapjoy/internal/bl;->i:[Lcom/tapjoy/internal/bl;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/bl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/bl;

    return-object v0
.end method
