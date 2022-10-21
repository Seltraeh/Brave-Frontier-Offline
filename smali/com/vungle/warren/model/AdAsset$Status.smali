.class public interface abstract annotation Lcom/vungle/warren/model/AdAsset$Status;
.super Ljava/lang/Object;
.source "AdAsset.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DOWNLOAD_FAILED:I = 0x2

.field public static final DOWNLOAD_RUNNING:I = 0x1

.field public static final DOWNLOAD_SUCCESS:I = 0x3

.field public static final NEW:I = 0x0

.field public static final PROCESSED:I = 0x4
