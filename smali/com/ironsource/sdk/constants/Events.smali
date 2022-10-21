.class public Lcom/ironsource/sdk/constants/Events;
.super Ljava/lang/Object;
.source "Events.java"


# static fields
.field public static final INTIALIZED:Ljava/lang/Object;

.field public static final UNINTIALIZED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "initialized instance"

    .line 34
    sput-object v0, Lcom/ironsource/sdk/constants/Events;->INTIALIZED:Ljava/lang/Object;

    const-string v0, "uninitialized instance"

    .line 35
    sput-object v0, Lcom/ironsource/sdk/constants/Events;->UNINTIALIZED:Ljava/lang/Object;

    return-void
.end method
