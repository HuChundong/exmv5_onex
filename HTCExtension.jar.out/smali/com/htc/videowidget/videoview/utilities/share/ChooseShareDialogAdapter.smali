.class public Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseShareDialogAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 42
    return-void
.end method


# virtual methods
.method public findShareItemIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .parameter "targetRI"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_1

    .line 112
    :cond_0
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[findShareItemIndex] can\'t get activityInfo"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, -0x1

    .line 118
    :goto_0
    return v1

    .line 116
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    .local v0, targetPkgName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->findShareItemIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public findShareItemIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "packageName"

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 125
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->TAG:Ljava/lang/String;

    const-string v4, "[findShareItemIndex] null package name"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v1, -0x1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[findShareItemIndex] search package name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, index:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 134
    .local v2, ri:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 136
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[findShareItemIndex] Loop :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_2
    invoke-interface {v2}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    .end local v2           #ri:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_3
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 145
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[findShareItemIndex] index over size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v1, -0x1

    goto :goto_0

    .line 140
    .restart local v2       #ri:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 73
    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    move-object v7, p2

    .line 105
    :goto_0
    return-object v7

    .line 76
    :cond_1
    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    .line 77
    .local v4, res:Landroid/content/res/Resources;
    if-nez v4, :cond_2

    .line 79
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[getView] res is null"

    invoke-static {v8, v9}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 84
    .local v0, activityItem:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 86
    .local v5, test:Landroid/content/pm/ResolveInfo;
    if-nez p2, :cond_4

    .line 88
    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 89
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_3

    move-object v7, p2

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 94
    .local v3, inflator:Landroid/view/LayoutInflater;
    const v8, 0x603000e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/htc/widget/HtcListItem;

    .line 97
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #inflator:Landroid/view/LayoutInflater;
    .restart local p2
    :cond_4
    const v7, 0x60b0039

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 98
    .local v2, img:Lcom/htc/widget/HtcListItemColorIcon;
    const v7, 0x60b003a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem2LineText;

    .line 99
    .local v6, text:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 100
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 102
    const v7, 0x2030038

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 103
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/share/ChooseShareDialogAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v7, p2

    .line 105
    goto :goto_0
.end method
