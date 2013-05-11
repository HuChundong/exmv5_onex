.class public Lcom/htc/preference/HtcPreferenceScreen;
.super Lcom/htc/preference/HtcPreferenceGroup;
.source "HtcPreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 10
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 166
    .local v3, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/htc/preference/HtcPreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_0

    .line 167
    iget-object v7, p0, Lcom/htc/preference/HtcPreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 172
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v7, 0x1090089

    invoke-virtual {v5, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, childPrefScreen:Landroid/view/View;
    const v7, 0x102000a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/htc/preference/HtcPreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 175
    iget-object v7, p0, Lcom/htc/preference/HtcPreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 176
    iget-object v7, p0, Lcom/htc/preference/HtcPreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 178
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 179
    .local v6, title:Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    invoke-direct {v4, v3, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 180
    .local v4, dialog:Landroid/app/Dialog;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 181
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 186
    :goto_0
    const v7, 0x2080001

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 188
    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 189
    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/htc/preference/HtcPreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 196
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 197
    invoke-virtual {v4}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 199
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v4}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 200
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, abtext:Lcom/htc/widget/ActionBarText;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 204
    .end local v0           #abtext:Lcom/htc/widget/ActionBarText;
    .end local v1           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    :cond_2
    return-void

    .line 184
    :cond_3
    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 147
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 148
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 149
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->onAttachedToActivity()V

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/htc/preference/HtcPreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;-><init>(Lcom/htc/preference/HtcPreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 212
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 213
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 230
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 231
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, item:Ljava/lang/Object;
    instance-of v2, v0, Lcom/htc/preference/HtcPreference;

    if-nez v2, :cond_1

    .line 238
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 236
    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 237
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->performClick(Lcom/htc/preference/HtcPreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcPreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 284
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 279
    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen$SavedState;

    .line 280
    .local v0, myState:Lcom/htc/preference/HtcPreferenceScreen$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 281
    iget-boolean v1, v0, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, v0, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 255
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 256
    .local v2, superState:Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 257
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 264
    :goto_0
    return-object v1

    .line 261
    :cond_1
    new-instance v1, Lcom/htc/preference/HtcPreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 262
    .local v1, myState:Lcom/htc/preference/HtcPreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->isDialogShowing:Z

    .line 263
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method
