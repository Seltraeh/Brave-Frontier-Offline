.class public interface abstract Lcom/vungle/warren/model/VisionDataDBAdapter$VisionDataColumns;
.super Ljava/lang/Object;
.source "VisionDataDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/VisionDataDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisionDataColumns"
.end annotation


# static fields
.field public static final COLUMN_ADVERTISER:Ljava/lang/String; = "advertiser"

.field public static final COLUMN_CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final COLUMN_CREATIVE:Ljava/lang/String; = "creative"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TABLE_NAME:Ljava/lang/String; = "vision_data"
