.class public Lcom/facebook/internal/logging/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private eventName:Ljava/lang/String;

.field private logCategory:Lcom/facebook/internal/logging/LogCategory;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/internal/logging/LogCategory;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/internal/logging/LogEvent;->eventName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/facebook/internal/logging/LogEvent;->logCategory:Lcom/facebook/internal/logging/LogCategory;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/facebook/internal/logging/LogEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogCategory()Lcom/facebook/internal/logging/LogCategory;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/facebook/internal/logging/LogEvent;->logCategory:Lcom/facebook/internal/logging/LogCategory;

    return-object v0
.end method

.method public upperCaseEventName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/facebook/internal/logging/LogEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/logging/LogEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method
