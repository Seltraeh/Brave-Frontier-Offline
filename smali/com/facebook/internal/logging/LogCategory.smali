.class public final enum Lcom/facebook/internal/logging/LogCategory;
.super Ljava/lang/Enum;
.source "LogCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/logging/LogCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/logging/LogCategory;

.field public static final enum METHOD_USAGE:Lcom/facebook/internal/logging/LogCategory;

.field public static final enum PERFORMANCE:Lcom/facebook/internal/logging/LogCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/facebook/internal/logging/LogCategory;

    const-string v1, "PERFORMANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/logging/LogCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/logging/LogCategory;->PERFORMANCE:Lcom/facebook/internal/logging/LogCategory;

    .line 26
    new-instance v0, Lcom/facebook/internal/logging/LogCategory;

    const-string v1, "METHOD_USAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/internal/logging/LogCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/logging/LogCategory;->METHOD_USAGE:Lcom/facebook/internal/logging/LogCategory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/internal/logging/LogCategory;

    .line 24
    sget-object v4, Lcom/facebook/internal/logging/LogCategory;->PERFORMANCE:Lcom/facebook/internal/logging/LogCategory;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/internal/logging/LogCategory;->$VALUES:[Lcom/facebook/internal/logging/LogCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/logging/LogCategory;
    .locals 1

    .line 24
    const-class v0, Lcom/facebook/internal/logging/LogCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/logging/LogCategory;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/logging/LogCategory;
    .locals 1

    .line 24
    sget-object v0, Lcom/facebook/internal/logging/LogCategory;->$VALUES:[Lcom/facebook/internal/logging/LogCategory;

    invoke-virtual {v0}, [Lcom/facebook/internal/logging/LogCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/logging/LogCategory;

    return-object v0
.end method
