.class Lcom/android/debug/hv/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/debug/hv/ViewServer$WindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/debug/hv/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private final mLock:[Ljava/lang/Object;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/debug/hv/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/debug/hv/ViewServer;Ljava/net/Socket;)V
    .locals 1

    .line 556
    iput-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    .line 554
    iput-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    .line 557
    iput-object p2, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 558
    iput-boolean p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 559
    iput-boolean p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    return-void
.end method

.method private findWindow(I)Landroid/view/View;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 678
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 680
    :try_start_0
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$400(Lcom/android/debug/hv/ViewServer;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 683
    throw p1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 690
    :try_start_1
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0}, Lcom/android/debug/hv/ViewServer;->access$500(Lcom/android/debug/hv/ViewServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 691
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 692
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 696
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 697
    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private getFocusedWindow(Ljava/net/Socket;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 744
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 745
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x2000

    invoke-direct {v2, v3, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 749
    :try_start_1
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$600(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 751
    :try_start_2
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$400(Lcom/android/debug/hv/ViewServer;)Landroid/view/View;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 753
    :try_start_3
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v1}, Lcom/android/debug/hv/ViewServer;->access$600(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v1}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 759
    :try_start_4
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v1}, Lcom/android/debug/hv/ViewServer;->access$500(Lcom/android/debug/hv/ViewServer;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$400(Lcom/android/debug/hv/ViewServer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 761
    :try_start_5
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v3}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 764
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 765
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 766
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 761
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v1}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 762
    throw p1

    :cond_0
    :goto_0
    const/16 p1, 0xa

    .line 768
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(I)V

    .line 769
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 775
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v0, 0x1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 753
    :try_start_7
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v1}, Lcom/android/debug/hv/ViewServer;->access$600(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 754
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_3
    move-exception p1

    :goto_1
    if-eqz v1, :cond_1

    .line 775
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 780
    :catch_1
    :cond_1
    throw p1

    :catch_2
    nop

    :goto_2
    if-eqz v1, :cond_2

    .line 775
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_2
    :goto_3
    return v0
.end method

.method private listWindows(Ljava/net/Socket;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 707
    :try_start_0
    iget-object v2, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v2}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 709
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 710
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x2000

    invoke-direct {v2, v3, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 712
    :try_start_1
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$500(Lcom/android/debug/hv/ViewServer;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 713
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 714
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 715
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v1, 0xa

    .line 716
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_0

    :cond_0
    const-string p1, "DONE.\n"

    .line 719
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 728
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 724
    :goto_1
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v1, :cond_1

    .line 728
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 733
    :catch_1
    :cond_1
    throw p1

    :catch_2
    nop

    .line 724
    :goto_2
    iget-object p1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {p1}, Lcom/android/debug/hv/ViewServer;->access$300(Lcom/android/debug/hv/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v1, :cond_2

    .line 728
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    :goto_3
    return v0
.end method

.method private windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 621
    const-class v0, Ljava/lang/String;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 626
    :try_start_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 628
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 630
    :cond_0
    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 631
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v6, v5

    .line 634
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    add-int/2addr v1, v3

    .line 635
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    .line 640
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->findWindow(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return v4

    .line 646
    :cond_2
    const-class v5, Landroid/view/ViewDebug;

    const-string v6, "dispatchCommand"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/view/View;

    aput-object v9, v8, v4

    aput-object v0, v8, v3

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const-class v0, Ljava/io/OutputStream;

    const/4 v10, 0x3

    aput-object v0, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 648
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v9

    .line 649
    new-instance v1, Lcom/android/debug/hv/ViewServer$UncloseableOuputStream;

    .line 650
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/debug/hv/ViewServer$UncloseableOuputStream;-><init>(Ljava/io/OutputStream;)V

    aput-object v1, v5, v10

    .line 649
    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 653
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "DONE\n"

    .line 654
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 665
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_2
    :try_start_3
    const-string v0, "ViewServer"

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not send command "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with parameters "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 665
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_3
    return v3

    :goto_4
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 670
    :catch_3
    :cond_6
    throw p1
.end method

.method private windowManagerAutolistLoop()Z
    .locals 7

    .line 800
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v0, p0}, Lcom/android/debug/hv/ViewServer;->access$700(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 803
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 804
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 807
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 808
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v3, :cond_1

    .line 809
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 811
    :cond_1
    iget-boolean v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 812
    iput-boolean v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 815
    :goto_2
    iget-boolean v5, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v5, :cond_3

    .line 816
    iput-boolean v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    const/4 v4, 0x1

    .line 819
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    :try_start_3
    const-string v1, "LIST UPDATE\n"

    .line 821
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    :cond_4
    if-eqz v4, :cond_0

    const-string v1, "FOCUS UPDATE\n"

    .line 825
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 819
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_3
    :try_start_6
    const-string v3, "ViewServer"

    const-string v4, "Connection error: "

    .line 830
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_6

    .line 834
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 839
    :catch_2
    :cond_6
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v1, p0}, Lcom/android/debug/hv/ViewServer;->access$800(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V

    return v0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 834
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 839
    :catch_3
    :cond_7
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->this$0:Lcom/android/debug/hv/ViewServer;

    invoke-static {v1, p0}, Lcom/android/debug/hv/ViewServer;->access$800(Lcom/android/debug/hv/ViewServer;Lcom/android/debug/hv/ViewServer$WindowListener;)V

    .line 840
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public focusChanged()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 794
    :try_start_0
    iput-boolean v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 795
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 796
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 7

    const-string v0, "ViewServer"

    const/4 v1, 0x0

    .line 565
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    .line 572
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 577
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 578
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v4

    :goto_0
    const-string v4, "PROTOCOL"

    .line 582
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "4"

    if-eqz v4, :cond_1

    .line 583
    :try_start_2
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/debug/hv/ViewServer;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_1
    const-string v4, "SERVER"

    .line 584
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 585
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/debug/hv/ViewServer;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_2
    const-string v4, "LIST"

    .line 586
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 587
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v3}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->listWindows(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_1

    :cond_3
    const-string v4, "GET_FOCUS"

    .line 588
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 589
    iget-object v3, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v3}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->getFocusedWindow(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_1

    :cond_4
    const-string v4, "AUTOLIST"

    .line 590
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 591
    invoke-direct {p0}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v3

    goto :goto_1

    .line 593
    :cond_5
    iget-object v4, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v4, v1, v3}, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_6

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred with the command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 604
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 610
    :goto_2
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v0, :cond_8

    .line 612
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_3
    :try_start_5
    const-string v3, "Connection error: "

    .line 600
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_7

    .line 604
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 610
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v0, :cond_8

    .line 612
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 614
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_9

    .line 604
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    .line 607
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 610
    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v1, :cond_a

    .line 612
    :try_start_9
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception v1

    .line 614
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    :cond_a
    :goto_8
    throw v0
.end method

.method public windowsChanged()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 787
    :try_start_0
    iput-boolean v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 788
    iget-object v1, p0, Lcom/android/debug/hv/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 789
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
