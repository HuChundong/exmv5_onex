.class public abstract Lcom/htc/opensense/plugin/ExteriorListAdapter;
.super Ljava/lang/Object;
.source "ExteriorListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/ExteriorListAdapter$LoadDataCallback;,
        Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MAX_COUNT_UNLIMITED:I


# instance fields
.field private mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDescription:Ljava/lang/String;

.field private mHostContext:Landroid/content/Context;

.field private mId:I

.field private mLimit:I

.field private mLoadCompleteListener:Lcom/htc/opensense/plugin/ExteriorListAdapter$LoadDataCallback;

.field private mPluginContext:Landroid/content/Context;

.field private mPluginInflater:Landroid/view/LayoutInflater;

.field private mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 3
    .parameter "hostContext"
    .parameter "pluginContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 167
    iput-object v1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mHostContext:Landroid/content/Context;

    .line 168
    iput-object v1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginContext:Landroid/content/Context;

    .line 169
    iput-object v1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginInflater:Landroid/view/LayoutInflater;

    .line 170
    iput-object v1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDescription:Ljava/lang/String;

    .line 171
    iput v2, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mId:I

    .line 172
    iput v2, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mLimit:I

    .line 176
    iput-object p1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mHostContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginInflater:Landroid/view/LayoutInflater;

    .line 180
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mHostContext:Landroid/content/Context;

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginContext:Landroid/content/Context;

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDescription:Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginInflater:Landroid/view/LayoutInflater;

    .line 350
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 355
    return-void

    .line 353
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCount()I
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mId:I

    return v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public getItemGroupId(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemId(I)J
.end method

.method public getItemLayoutId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 388
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getItemOrderKey(I)Ljava/lang/Comparable;
.end method

.method public abstract getItemSeparationKey(I)Ljava/lang/Object;
.end method

.method public getItemSeparationText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationKey(I)Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, key:Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 441
    .end local v0           #key:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 438
    :catch_0
    move-exception v1

    .line 441
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemValueAtPositionByKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "position"

    .prologue
    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemView(ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
.end method

.method public getItemViewProxy(II)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 1
    .parameter "position"
    .parameter "proxyType"

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemsCountLimit()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mLimit:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLoadDataCallback()Lcom/htc/opensense/plugin/ExteriorListAdapter$LoadDataCallback;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mLoadCompleteListener:Lcom/htc/opensense/plugin/ExteriorListAdapter$LoadDataCallback;

    return-object v0
.end method

.method public getPluginContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeInLastItem()I
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSorted()Z
.end method

.method public loadData()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 149
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 156
    return-void
.end method

.method public onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z
    .locals 1
    .parameter "contextMenuItemId"
    .parameter "info"

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 456
    return-void
.end method

.method public onReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 302
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 317
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDescription:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 214
    iput p1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mId:I

    .line 215
    return-void
.end method

.method public setItemsCountLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 274
    iput p1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mLimit:I

    .line 275
    return-void
.end method

.method public setLoadDataCallback(Lcom/htc/opensense/plugin/ExteriorListAdapter$LoadDataCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mLoadCompleteListener:Lcom/htc/opensense/plugin/ExteriorListAdapter$LoadDataCallback;

    .line 563
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 253
    return-void
.end method

.method public unloadData()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "com.htc.opensense.plugin.ExteriorListAdapter"

    const-string v1, "Exception : mDataSetObservable == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    goto :goto_0
.end method
