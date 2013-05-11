.class Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/preference/HtcPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 281
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 282
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 293
    if-nez p2, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x2050003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 295
    .local v5, margin_xs:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x2050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 296
    .local v4, margin_m:I
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x205000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 298
    .local v7, spacing:I
    iget-object v10, p0, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x2090070

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 300
    .local v9, view:Landroid/view/View;
    new-instance v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/htc/preference/HtcPreferenceActivity$1;)V

    .line 301
    .local v3, holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 302
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 303
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 304
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v10, :cond_0

    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 305
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x2030038

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 306
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 307
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x2030042

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 308
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 310
    :cond_0
    invoke-virtual {v9, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "common_list_item_background"

    const v13, 0x208003b

    invoke-static {v11, v12, v13}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 313
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-virtual {v9, v4, v7, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 322
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v4           #margin_m:I
    .end local v5           #margin_xs:I
    .end local v7           #spacing:I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 325
    .local v2, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 327
    .local v6, res:Landroid/content/res/Resources;
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 329
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_1
    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 333
    .local v8, summary:Ljava/lang/CharSequence;
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 335
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 336
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_2
    :goto_1
    return-object v9

    .line 317
    .end local v2           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v3           #holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v8           #summary:Ljava/lang/CharSequence;
    .end local v9           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v9, p2

    .line 318
    .restart local v9       #view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 339
    .restart local v2       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .restart local v6       #res:Landroid/content/res/Resources;
    .restart local v8       #summary:Ljava/lang/CharSequence;
    :cond_4
    iget-object v10, v3, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
