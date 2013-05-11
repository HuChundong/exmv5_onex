.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
.super Ljava/lang/Object;
.source "ISunnyActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;,
        Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;,
        Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;,
        Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;
    }
.end annotation


# virtual methods
.method public abstract attach(Landroid/view/ViewGroup;)V
.end method

.method public abstract detach(Landroid/view/ViewGroup;)V
.end method

.method public abstract dismissDropList()V
.end method

.method public abstract enableHTCLandscape(Z)V
.end method

.method public abstract enableSearchMode(Landroid/content/Context;Z)V
.end method

.method public abstract gestureRegion()D
.end method

.method public abstract getHeight()I
.end method

.method public abstract getVisibility()I
.end method

.method public abstract onActionBarTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract searchPane()Lcom/htc/widget/ActionBarSearch;
.end method

.method public abstract setBackUpEnabled(Z)V
.end method

.method public abstract setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setDropdownListContent(Landroid/widget/BaseAdapter;)V
.end method

.method public abstract setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V
.end method

.method public abstract setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
.end method

.method public abstract setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V
.end method

.method public abstract setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V
.end method

.method public abstract setPrimaryText(I)V
.end method

.method public abstract setPrimaryText(Ljava/lang/String;)V
.end method

.method public abstract setProgressVisibility(I)V
.end method

.method public abstract setSecondaryText(I)V
.end method

.method public abstract setSecondaryText(Ljava/lang/String;)V
.end method

.method public abstract setTopMargin(Landroid/app/Activity;I)V
.end method

.method public abstract setVisibility(I)V
.end method
