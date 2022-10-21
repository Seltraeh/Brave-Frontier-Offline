.class public interface abstract Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DatabaseFactory"
.end annotation


# virtual methods
.method public abstract create(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract deleteData(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
