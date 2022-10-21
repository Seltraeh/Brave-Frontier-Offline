.class public interface abstract Lcom/vungle/warren/model/AdAssetDBAdapter$AdAssetColumns;
.super Ljava/lang/Object;
.source "AdAssetDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdAssetDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdAssetColumns"
.end annotation


# static fields
.field public static final COLUMN_AD_ID:Ljava/lang/String; = "ad_identifier"

.field public static final COLUMN_FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final COLUMN_FILE_STATUS:Ljava/lang/String; = "file_status"

.field public static final COLUMN_FILE_TYPE:Ljava/lang/String; = "file_type"

.field public static final COLUMN_LOCAL_PATH:Ljava/lang/String; = "local_path"

.field public static final COLUMN_PARENT_ID:Ljava/lang/String; = "paren_id"

.field public static final COLUMN_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final COLUMN_RETRY_ERROR:Ljava/lang/String; = "retry_error"

.field public static final COLUMN_SERVER_PATH:Ljava/lang/String; = "server_path"

.field public static final TABLE_NAME:Ljava/lang/String; = "adAsset"
