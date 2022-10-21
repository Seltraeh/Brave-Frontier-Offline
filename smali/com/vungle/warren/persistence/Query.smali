.class Lcom/vungle/warren/persistence/Query;
.super Ljava/lang/Object;
.source "Query.java"


# instance fields
.field args:[Ljava/lang/String;

.field columns:[Ljava/lang/String;

.field groupBy:Ljava/lang/String;

.field having:Ljava/lang/String;

.field limit:Ljava/lang/String;

.field orderBy:Ljava/lang/String;

.field selection:Ljava/lang/String;

.field final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vungle/warren/persistence/Query;->tableName:Ljava/lang/String;

    return-void
.end method
