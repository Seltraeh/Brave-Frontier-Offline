.class interface abstract Lcom/vungle/warren/OperationSequence$Callback;
.super Ljava/lang/Object;
.source "OperationSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/OperationSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onChangePriority(Lcom/vungle/warren/AdLoader$Operation;)V
.end method

.method public abstract onLoadNext(Lcom/vungle/warren/AdLoader$Operation;)V
.end method
