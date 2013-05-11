.class public Lcom/htc/opensense2/album/util/DrmManager$DRMActionActivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DRMActionActivityBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1357
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1491
    :goto_0
    return-void

    .line 1364
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1365
    .local v2, downloadUri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$500()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1367
    :cond_1
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1368
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1369
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense2/album/util/DrmManager;->access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 1371
    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1372
    :cond_3
    const-string v1, "DrmManager"

    const-string v3, "Receive the DRM downloaded wrong."

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1376
    :cond_4
    const/4 v11, 0x0

    .line 1377
    .local v11, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$500()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1379
    .local v14, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$500()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;

    iget-object v1, v1, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1381
    move-object v11, v14

    .line 1386
    .end local v14           #path:Ljava/lang/String;
    :cond_6
    if-nez v11, :cond_9

    .line 1388
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1389
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1390
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense2/album/util/DrmManager;->access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 1392
    :cond_7
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1393
    :cond_8
    const-string v1, "DrmManager"

    const-string v3, "Receive the DRM downloaded wrong."

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1397
    :cond_9
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Right downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v8, 0x1

    .line 1401
    .local v8, bCancel:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mimetype"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "entity"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1405
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_b

    .line 1409
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1411
    const-string v1, "status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1415
    .local v17, status:I
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download status code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v1, "mimetype"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1421
    .local v13, mimetype:Ljava/lang/String;
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v1, "entity"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1427
    .local v18, url:Ljava/lang/String;
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-static/range {v17 .. v17}, Lcom/htc/wrap/android/provider/HtcWrapDownloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1434
    const/16 v1, 0x191

    move/from16 v0, v17

    if-ne v0, v1, :cond_d

    .line 1435
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v7, acquire:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1437
    .local v16, righturi:Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1438
    const/high16 v1, 0x1000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1440
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    .end local v7           #acquire:Landroid/content/Intent;
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v16           #righturi:Landroid/net/Uri;
    .end local v17           #status:I
    .end local v18           #url:Ljava/lang/String;
    :cond_a
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1479
    :cond_b
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$500()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1483
    if-eqz v8, :cond_11

    .line 1484
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1489
    :cond_c
    :goto_2
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1490
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense2/album/util/DrmManager;->access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 1443
    .restart local v13       #mimetype:Ljava/lang/String;
    .restart local v17       #status:I
    .restart local v18       #url:Ljava/lang/String;
    :cond_d
    const/4 v15, 0x0

    .line 1445
    .local v15, rc:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.htc"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 1451
    :goto_3
    const v1, 0x2040177

    :try_start_2
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1475
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v15           #rc:Landroid/content/res/Resources;
    .end local v17           #status:I
    .end local v18           #url:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1447
    .restart local v13       #mimetype:Ljava/lang/String;
    .restart local v15       #rc:Landroid/content/res/Resources;
    .restart local v17       #status:I
    .restart local v18       #url:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1449
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1457
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15           #rc:Landroid/content/res/Resources;
    :cond_e
    const-string v1, "text/html"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "application/xhtml+xml"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1458
    :cond_f
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1459
    .restart local v7       #acquire:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1460
    .restart local v16       #righturi:Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1461
    const/high16 v1, 0x1000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1463
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1468
    .end local v7           #acquire:Landroid/content/Intent;
    .end local v16           #righturi:Landroid/net/Uri;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1486
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v17           #status:I
    .end local v18           #url:Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onRenewRight()V

    goto :goto_2
.end method
