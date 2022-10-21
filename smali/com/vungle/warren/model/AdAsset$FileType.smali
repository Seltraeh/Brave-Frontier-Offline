.class public interface abstract annotation Lcom/vungle/warren/model/AdAsset$FileType;
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
    name = "FileType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ASSET:I = 0x2

.field public static final ZIP:I = 0x0

.field public static final ZIP_ASSET:I = 0x1
