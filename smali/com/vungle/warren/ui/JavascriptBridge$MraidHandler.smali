.class public interface abstract Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/JavascriptBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MraidHandler"
.end annotation


# static fields
.field public static final CLOSE_ACTION:Ljava/lang/String; = "close"

.field public static final DOWNLOAD_ACTION:Ljava/lang/String; = "download"

.field public static final PRIVACY_ACTION:Ljava/lang/String; = "privacy"


# virtual methods
.method public abstract onMraidAction(Ljava/lang/String;)V
.end method
