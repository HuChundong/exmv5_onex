.class public abstract Lcom/htc/opensense/res/AbstractResourceHelper;
.super Ljava/lang/Object;
.source "AbstractResourceHelper.java"

# interfaces
.implements Lcom/htc/opensense/res/IResourceHelper;


# static fields
.field private static final sResourceNameSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPackageName:Ljava/lang/String;

.field private mResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    .line 20
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->avatar:I

    const-string v2, "avatar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->content:I

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->message_container:I

    const-string v2, "message_container"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->subcontent:I

    const-string v2, "subcontent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->subcontent_ext:I

    const-string v2, "subcontent_ext"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$layout;->htc_list_item_social_network:I

    const-string v2, "htc_list_item_social_network"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_list_secondary_xxs:I

    const-string v2, "fixed_list_secondary_xxs"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_list_secondary_xs:I

    const-string v2, "fixed_list_secondary_xs"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_list_secondary_s:I

    const-string v2, "fixed_list_secondary_s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_list_secondary_m:I

    const-string v2, "fixed_list_secondary_m"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_list_secondary_l:I

    const-string v2, "fixed_list_secondary_l"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_list_secondary_xl:I

    const-string v2, "fixed_list_secondary_xl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_list_secondary_xxl:I

    const-string v2, "fixed_list_secondary_xxl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_button_primary_xs:I

    const-string v2, "fixed_button_primary_xs"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_button_primary_s:I

    const-string v2, "fixed_button_primary_s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_button_primary_m:I

    const-string v2, "fixed_button_primary_m"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_button_primary_l:I

    const-string v2, "fixed_button_primary_l"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_button_primary_xl:I

    const-string v2, "fixed_button_primary_xl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$dimen;->fixed_button_primary_xxl:I

    const-string v2, "fixed_button_primary_xxl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, pkgContext:Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    if-eqz v1, :cond_0

    .line 66
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .end local v1           #pkgContext:Landroid/content/Context;
    :cond_1
    :goto_1
    return-void

    .line 57
    .restart local v1       #pkgContext:Landroid/content/Context;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 71
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getRealResId(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .parameter "context"
    .parameter
    .parameter "packageName"
    .parameter "type"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, sparseArray:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 162
    .local v1, realResId:I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, resName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, p3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    .end local v2           #resName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 170
    .restart local v2       #resName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 155
    iput-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;

    .line 156
    iput-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    .line 157
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .parameter "resId"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    const-string v4, "dimen"

    invoke-static {v1, v2, v3, v4, p1}, Lcom/htc/opensense/res/AbstractResourceHelper;->getRealResId(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, realResId:I
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "resId"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    const-string v4, "drawable"

    invoke-static {v1, v2, v3, v4, p1}, Lcom/htc/opensense/res/AbstractResourceHelper;->getRealResId(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, realResId:I
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId(I)I
    .locals 4
    .parameter "resId"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/htc/opensense/res/AbstractResourceHelper;->getRealResId(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "resId"
    .parameter "root"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/opensense/res/AbstractResourceHelper;->sResourceNameSparseArray:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mPackageName:Ljava/lang/String;

    const-string v4, "layout"

    invoke-static {v1, v2, v3, v4, p1}, Lcom/htc/opensense/res/AbstractResourceHelper;->getRealResId(Landroid/content/Context;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, realResId:I
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/htc/opensense/res/AbstractResourceHelper;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
