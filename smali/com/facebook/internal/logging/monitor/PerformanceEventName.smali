.class public final enum Lcom/facebook/internal/logging/monitor/PerformanceEventName;
.super Ljava/lang/Enum;
.source "PerformanceEventName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/logging/monitor/PerformanceEventName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/logging/monitor/PerformanceEventName;

.field public static final enum EVENT_NAME_FOR_TEST_FIRST:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

.field public static final enum EVENT_NAME_FOR_TEST_SECOND:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

.field public static final enum FB_CORE_STARTUP:Lcom/facebook/internal/logging/monitor/PerformanceEventName;


# instance fields
.field private eventName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    const-string v1, "EVENT_NAME_FOR_TEST_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/facebook/internal/logging/monitor/PerformanceEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->EVENT_NAME_FOR_TEST_FIRST:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    .line 8
    new-instance v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    const-string v1, "EVENT_NAME_FOR_TEST_SECOND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/facebook/internal/logging/monitor/PerformanceEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->EVENT_NAME_FOR_TEST_SECOND:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    .line 9
    new-instance v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    const-string v1, "FB_CORE_STARTUP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/facebook/internal/logging/monitor/PerformanceEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->FB_CORE_STARTUP:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    .line 5
    sget-object v5, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->EVENT_NAME_FOR_TEST_FIRST:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    aput-object v5, v1, v2

    sget-object v2, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->EVENT_NAME_FOR_TEST_SECOND:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->$VALUES:[Lcom/facebook/internal/logging/monitor/PerformanceEventName;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->eventName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/logging/monitor/PerformanceEventName;
    .locals 1

    .line 5
    const-class v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/logging/monitor/PerformanceEventName;
    .locals 1

    .line 5
    sget-object v0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->$VALUES:[Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    invoke-virtual {v0}, [Lcom/facebook/internal/logging/monitor/PerformanceEventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/PerformanceEventName;->eventName:Ljava/lang/String;

    return-object v0
.end method
