.class public interface abstract annotation Lcom/vungle/warren/model/AdAsset$ErrorType;
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
    name = "ErrorType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CANNOT_RETRY_ERROR:I = 0x2

.field public static final CAN_RETRY_ERROR:I = 0x1

.field public static final NO_ERROR:I
