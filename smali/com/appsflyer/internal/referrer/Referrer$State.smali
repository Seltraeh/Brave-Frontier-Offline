.class public final enum Lcom/appsflyer/internal/referrer/Referrer$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/referrer/Referrer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/referrer/Referrer$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FINISHED:Lcom/appsflyer/internal/referrer/Referrer$State;

.field public static final enum NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

.field public static final enum STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

.field private static final synthetic ι:[Lcom/appsflyer/internal/referrer/Referrer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    new-instance v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/referrer/Referrer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    new-instance v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/referrer/Referrer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    new-instance v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/referrer/Referrer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->FINISHED:Lcom/appsflyer/internal/referrer/Referrer$State;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsflyer/internal/referrer/Referrer$State;

    .line 37
    sget-object v5, Lcom/appsflyer/internal/referrer/Referrer$State;->NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsflyer/internal/referrer/Referrer$State;->STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsflyer/internal/referrer/Referrer$State;->ι:[Lcom/appsflyer/internal/referrer/Referrer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/referrer/Referrer$State;
    .locals 1

    .line 37
    const-class v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/referrer/Referrer$State;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/referrer/Referrer$State;
    .locals 1

    .line 37
    sget-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->ι:[Lcom/appsflyer/internal/referrer/Referrer$State;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/referrer/Referrer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/referrer/Referrer$State;

    return-object v0
.end method
