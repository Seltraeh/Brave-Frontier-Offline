.class public Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError$ErrorReason;
    }
.end annotation


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final reason:I
    .annotation build Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError$ErrorReason;
    .end annotation
.end field

.field public final serverCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->serverCode:I

    .line 26
    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    .line 27
    iput p3, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    return-void
.end method
