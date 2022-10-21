.class public interface abstract annotation Lcom/vungle/warren/downloader/DownloadRequest$Priority;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Priority"
.end annotation


# static fields
.field public static final CRITICAL:I = -0x7fffffff

.field public static final HIGH:I = 0x1

.field public static final HIGHEST:I = 0x0

.field public static final LOWEST:I = 0x7fffffff
