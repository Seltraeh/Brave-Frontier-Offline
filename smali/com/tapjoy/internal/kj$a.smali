.class public final enum Lcom/tapjoy/internal/kj$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/kj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/kj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/kj$a;

.field public static final enum b:Lcom/tapjoy/internal/kj$a;

.field public static final enum c:Lcom/tapjoy/internal/kj$a;

.field public static final enum d:Lcom/tapjoy/internal/kj$a;

.field public static final enum e:Lcom/tapjoy/internal/kj$a;

.field public static final enum f:Lcom/tapjoy/internal/kj$a;

.field private static final synthetic g:[Lcom/tapjoy/internal/kj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 130
    new-instance v0, Lcom/tapjoy/internal/kj$a;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/kj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/kj$a;->a:Lcom/tapjoy/internal/kj$a;

    .line 135
    new-instance v0, Lcom/tapjoy/internal/kj$a;

    const-string v1, "STARTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/kj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/kj$a;->b:Lcom/tapjoy/internal/kj$a;

    .line 140
    new-instance v0, Lcom/tapjoy/internal/kj$a;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/kj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/kj$a;->c:Lcom/tapjoy/internal/kj$a;

    .line 145
    new-instance v0, Lcom/tapjoy/internal/kj$a;

    const-string v1, "STOPPING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/kj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/kj$a;->d:Lcom/tapjoy/internal/kj$a;

    .line 151
    new-instance v0, Lcom/tapjoy/internal/kj$a;

    const-string v1, "TERMINATED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/internal/kj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    .line 157
    new-instance v0, Lcom/tapjoy/internal/kj$a;

    const-string v1, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/internal/kj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/kj$a;->f:Lcom/tapjoy/internal/kj$a;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/tapjoy/internal/kj$a;

    .line 124
    sget-object v8, Lcom/tapjoy/internal/kj$a;->a:Lcom/tapjoy/internal/kj$a;

    aput-object v8, v1, v2

    sget-object v2, Lcom/tapjoy/internal/kj$a;->b:Lcom/tapjoy/internal/kj$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tapjoy/internal/kj$a;->c:Lcom/tapjoy/internal/kj$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tapjoy/internal/kj$a;->d:Lcom/tapjoy/internal/kj$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tapjoy/internal/kj$a;->e:Lcom/tapjoy/internal/kj$a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/tapjoy/internal/kj$a;->g:[Lcom/tapjoy/internal/kj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/kj$a;
    .locals 1

    .line 124
    const-class v0, Lcom/tapjoy/internal/kj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/kj$a;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/kj$a;
    .locals 1

    .line 124
    sget-object v0, Lcom/tapjoy/internal/kj$a;->g:[Lcom/tapjoy/internal/kj$a;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/kj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/kj$a;

    return-object v0
.end method
