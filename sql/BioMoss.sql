Create database if not exists bioMoss CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use  bioMoss;

-- drop database biomoss;

-- drop table products;

create table products(
	pCode varchar (40)  primary key,
	pName varchar(80),
	pPrice float,
	pSize varchar (40),
	pDesc varchar(1000),
	pKeyIng varchar (1000),
	pDirToUse varchar (1000),
	pQuantity int,
	pFormat varchar (100),
	pFullIng varchar (1000)
);
   
create table users(
	uEmail varchar (40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci primary key);
   
create table cart(
	orderId varchar(40) primary key,
	uId int
);

create table cOrder(
	orderId int primary key,
	uId int,
	total float);
    
-- drop table orderlineItem;

create table orderLineItem(
    orderLineItemId int primary key,
    quantity int,
    orderId int,
		foreign key (orderId)
			references cOrder (orderId),
	pCode varchar (40),
		foreign key (pCode)
			references products (pCode)
);
    
create table promoCode(
	promo1 int,
    promo2 varchar(8));
    
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng) 
	values (101.001,'BioMoss Daily Natural moisturising cream',30.00,'30 ml', 'Formulated with 98% natural-origin ingredients, introducing our luxurious Daily Natural moisturiser, 
		designed to hydrate and nourish your skin for a healthy, radiant glow. This lightweight formula is packed with all-organic ingredients to provide deep moisture and 
		hydration while also promoting skin elasticity and reducing the appearance of fine lines and wrinkles. Suitable for all skin types, our moisturiser is perfect for daily 
		use and can be easily incorporated into your skincare routine. Experience the ultimate in skincare luxury with our moisturiser, and enjoy the benefits of soft, supple, 
		and glowing skin.', 'Sodium Hyaluronate, Arginine, Sodium PCA, PCA, Lactic Acid, Vitamin E, Hyaluronic Acid and Minerals.', 'Prepare your skin with our BioMoss Glow Booster 
		Serum, next continue by applying your BioMoss Natural moisturising cream to your face and neck as your daily skincare routine for best results. Patch test before use; if 
		irritation occurs, rinse off, cease use and consult a physician. Use only as directed on unbroken skin. Keep out of reach of children.', 100, ' Emulsion (milky, gel-like 
		consistency).', 'Water (Aqua/Eau), Tricaprylin, Butylene Glycol, Glycerin, Caprylic/capric Triglyceride, Propanediol, Hydrogenated Polydecene, Dimethicone, Vitamin E, 
		Hyaluronic Acid, Polysorbate 60, Glyceryl Stearate, Isodecyl Neopentanoate, Isostearic Acid, Urea, Glucosamine Hcl, Algae Extract, Saccharomyces Cerevisiae Extract, Sodium 
		Methyl Stearoyl Taurate, Arginine, Sodium Pca, Polysorbate 20, Sodium Metabisulfite, Sodium Hyaluronate, Palmitoyl Tetrapeptide-7, Palmitoyl Tripeptide-1, Lactic Acid.');
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng)
	values (101.002,'BioMoss Daily Natural moisturising cream',80.00,'90 ml', 'Formulated with 98% natural-origin ingredients, introducing our luxurious Daily Natural moisturiser, 
		designed to hydrate and nourish your skin for a healthy, radiant glow. This lightweight formula is packed with all-organic ingredients to provide deep moisture and hydration 
		while also promoting skin elasticity and reducing the appearance of fine lines and wrinkles. Suitable for all skin types, our moisturiser is perfect for daily use and can be 
		easily incorporated into your skincare routine. Experience the ultimate in skincare luxury with our moisturiser, and enjoy the benefits of soft, supple, and glowing skin.', 
		'Sodium Hyaluronate, Arginine, Sodium PCA, PCA, Lactic Acid, Vitamin E, Hyaluronic Acid and Minerals.', 'Prepare your skin with our BioMoss Glow Booster Serum, next continue 
		by applying your BioMoss Natural moisturising cream to your face and neck as your daily skincare routine for best results. Patch test before use; if irritation occurs, rinse 
		off, cease use and consult a physician. Use only as directed on unbroken skin. Keep out of reach of children.', 100, ' Emulsion (milky, gel-like consistency).', 'Water (Aqua/Eau), 
		Tricaprylin, Butylene Glycol, Glycerin, Caprylic/capric Triglyceride, Propanediol, Hydrogenated Polydecene, Dimethicone, Vitamin E, Hyaluronic Acid, Polysorbate 60, Glyceryl 
		Stearate, Isodecyl Neopentanoate, Isostearic Acid, Urea, Glucosamine Hcl, Algae Extract, Saccharomyces Cerevisiae Extract, Sodium Methyl Stearoyl Taurate, Arginine, Sodium Pca, 
		Polysorbate 20, Sodium Metabisulfite, Sodium Hyaluronate, Palmitoyl Tetrapeptide-7, Palmitoyl Tripeptide-1, Lactic Acid.');
   
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng)
	values ( 201.001,'BioMoss Glow Booster Serum', 30.00,'30 ml', 'Formulated with 95% natural-origin ingredients, BioMoss Glowing Serum age-defying serum that visibly improves skin 
		firmness and corrects the major signs of aging: expression lines, wrinkles, visible pores, unevenness and loss of elasticity, radiance, firmness and plumpness. Containing H.A. 
		poly-filler technology, consisting of a complex of hyaluronic acids and polyglycerols that have shown an instant and lasting 8-hour** plumping effect, the noticeable and lasting 
		transformation of the skin’s appearance intensifies over time.', 'Sodium Hyaluronate, Sodium Hyaluronate Crosspolymer, Panthenol, Hyaluronic Acid and Vitamin B3.', 'Apply to 
		your face and neck after cleansing as your daily skincare routine, followed by our BioMoss Daily Natural moisturiser on top for best results. Patch test before use; if irritation 
		occurs, rinse off, cease use and consult a physician. Use only as directed on unbroken skin. Keep out of reach of children.',100,'Water-based Serum', 'Aqua (Water), Glycerin, 
		Simmondsia Chinensis (Jojoba) Seed Oil, Helianthus Annuus (Sunflower) Seed Oil, Isostearyl Alcohol, Propanediol, 1,2-Hexanediol, Niacinamide, Pentylene Glycol, Butylene Glycol 
		Cocoate, Macrocystis Pyrifera (Kelp) Extract, Camellia Sinensis Leaf Extract, Argania Spinosa Kernel Oil, Hyaluronic Acid, Ceramide Np, Tocopheryl Acetate, Tocopherol, Maltodextrin, 
		Acrylates/C10-30 Alkyl Acrylate CrosspolymerSodium Hyaluronate, Sodium Hydroxide, Adenosine, Biosaccharide Gum-1, Sodium Benzoate, Limonene, Linalool, Citronellol, Geraniol <16681>.');
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng) 
	values ( 201.002,'BioMoss Glow Booster Serum', 80.00,'90 ml', 'Formulated with 95% natural-origin ingredients, BioMoss Glowing Serum age-defying serum that visibly improves skin 
		firmness and corrects the major signs of aging: expression lines, wrinkles, visible pores, unevenness and loss of elasticity, radiance, firmness and plumpness. Containing H.A. 
		poly-filler technology, consisting of a complex of hyaluronic acids and polyglycerols that have shown an instant and lasting 8-hour** plumping effect, the noticeable and lasting 
		transformation of the skin’s appearance intensifies over time.', 'Sodium Hyaluronate, Sodium Hyaluronate Crosspolymer, Panthenol, Hyaluronic Acid and Vitamin B3.', 'Apply to your 
		face and neck after cleansing as your daily skincare routine, followed by our BioMoss Daily Natural moisturiser on top for best results. Patch test before use; if irritation 
		occurs, rinse off, cease use and consult a physician. Use only as directed on unbroken skin. Keep out of reach of children.',100,'Water-based Serum', 'Aqua (Water), Glycerin, 
		Simmondsia Chinensis (Jojoba) Seed Oil, Helianthus Annuus (Sunflower) Seed Oil, Isostearyl Alcohol, Propanediol, 1,2-Hexanediol, Niacinamide, Pentylene Glycol, Butylene Glycol 
		Cocoate, Macrocystis Pyrifera (Kelp) Extract, Camellia Sinensis Leaf Extract, Argania Spinosa Kernel Oil, Hyaluronic Acid, Ceramide Np, Tocopheryl Acetate, Tocopherol, Maltodextrin, 
		Acrylates/C10-30 Alkyl Acrylate CrosspolymerSodium Hyaluronate, Sodium Hydroxide, Adenosine, Biosaccharide Gum-1, Sodium Benzoate, Limonene, Linalool, Citronellol, Geraniol <16681>.');
   
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng) 
	values (301.001, 'BioMoss Night Repair Cream', 30.00, '30 ml', 'Powered by science and balanced by botanicals, our BioMoss retinol cream supercharged formulations provide a visible, 
		measurable improvement to your complexion. Our latest sought-after launch comes in the form of high-sose Retinoid Cream. Powered by 6.5% blend of stabilised retinoid and 
		retinoid-like botanical extracts, this formulation grants all the youth-boosting, blemish-busting, radiance-enhancing benefits of traditional retinoids and retinols without 
		the prescription or downtime.One of the most bio-available non-prescription forms of vitamin A products on the market, BioMoss Night Repair Cream is a pro-strength formula for 
		those who want serious results without the unwanted side effects of traditional retinol formulations (reduced appearance of side effects like flaking, redness, and irritation 
		compared to high-strength retinol and retinoid products is visible after one use).','Retinol, Squalane, Vitamin A', 'Apply to your face and neck as your last step after cleansing 
		with our unique BioMoss Cleanser Gel as your nightly skincare routine for best results. Patch test before use; if irritation occurs, rinse off, cease use and consult a physician. 
		Use only as directed on unbroken skin. Keep out of reach of children.', 100,'Emulsion', ' Retinol, Squalane, A+ SERUM: Water/Eau/Agua, Propanediol, Dimethyl Isosorbide, 
		Triheptanoin, Dimethicone, Glycerin, Pentylene Glycol, Hexyldecanol, Disiloxane, Cetyl PEG/PPG-10/1 Dimethicone, Diheptyl Succinate, Propylene Carbonate, Hydroxypinacolone 
		Retinoate, PPG-24-Glycereth-24, Phenyl Trimethicone, Ubiquinone (CoQ10).');
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng) 
	values (301.002, 'BioMoss Night Repair Cream', 80.00, '90 ml', 'Powered by science and balanced by botanicals, our BioMoss retinol cream supercharged formulations provide a visible, 
		measurable improvement to your complexion. Our latest sought-after launch comes in the form of high-sose Retinoid Cream. Powered by 6.5% blend of stabilised retinoid and 
		retinoid-like botanical extracts, this formulation grants all the youth-boosting, blemish-busting, radiance-enhancing benefits of traditional retinoids and retinols without 
		the prescription or downtime.One of the most bio-available non-prescription forms of vitamin A products on the market, BioMoss Night Repair Cream is a pro-strength formula for 
		those who want serious results without the unwanted side effects of traditional retinol formulations (reduced appearance of side effects like flaking, redness, and irritation 
		compared to high-strength retinol and retinoid products is visible after one use).','Retinol, Squalane, Vitamin A', 'Apply to your face and neck as your last step after cleansing 
		with our unique BioMoss Cleanser Gel as your nightly skincare routine for best results. Patch test before use; if irritation occurs, rinse off, cease use and consult a physician. 
		Use only as directed on unbroken skin. Keep out of reach of children.', 100,'Emulsion', ' Retinol, Squalane, A+ SERUM: Water/Eau/Agua, Propanediol, Dimethyl Isosorbide, 
		Triheptanoin, Dimethicone, Glycerin, Pentylene Glycol, Hexyldecanol, Disiloxane, Cetyl PEG/PPG-10/1 Dimethicone, Diheptyl Succinate, Propylene Carbonate, Hydroxypinacolone 
		Retinoate, PPG-24-Glycereth-24, Phenyl Trimethicone, Ubiquinone (CoQ10).');
   
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng)
	values (401.001,'BioMoss Age-Defying Intensive Repairing Cream', 30.00, '30 ml', 'Formulated with 94% natural-origin ingredients, BioMoss first anti-aging cream, intensive repairing 
		cream that visibly reverses the signs of aging. This ultimate skincare jewel* rejuvenates skin’s appearance thanks to a formula that delivers the action of the new Rosapeptide. 
		Infused with Rosapeptide, created from this Rose and inspired by the latest discoveries in regenerative medicine, the technology behind this cream with a rejuvenating effect helps 
		support the skin at every level: the skin matrix is redensified, the epidermis is visibly rejuvenated and the skin barrier seems strengthened and protected. Skin looks denser, 
		facial contours appear enhanced and wrinkles seem smoothed. Skin regains its radiance, and its volume appears restored. These ingredients have demonstrated biological efficacy, 
		supported by rigorous laboratory skin testing.', ' Rosapeptide , Rosa Canina Seed Oil, Vitamin C', 'Prepare your skin with BioMoss Glow Booster Serum; continue your skincare by 
		applying our age-defying cream to your face and neck after cleansing for best results. Patch test before use; if irritation occurs, rinse off, cease use and consult a physician. 
		Use only as directed on unbroken skin. Keep out of reach of children.', 100,'Oil','Rose extract, Vitamin C, Rosa Canina Seed Oil, Malva Sylvestris (Mallow) extract, Avena Sativa 
		(Oat) Kernel extract, Tocopheryl Acetate, Sodium Hyaluronate, Adensoine, Lactic Acid, Acetyl Hexapeptide-8, Palmitoyl Tetrapeptide-7, Urea, Squalane, Caprylic/Capric Triglyceride, 
		Butyrospermum Parkii (Shea) Butter, Cocoglycerides, Glycine Soja (Soybean) Oil.');
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng) 
	values (401.002,'BioMoss Age-Defying Intensive Repairing Cream', 80.00, '90 ml', 'Formulated with 94% natural-origin ingredients, BioMoss first anti-aging cream, intensive repairing cream 
		that visibly reverses the signs of aging. This ultimate skincare jewel* rejuvenates skin’s appearance thanks to a formula that delivers the action of the new Rosapeptide. Infused with 
		Rosapeptide, created from this Rose and inspired by the latest discoveries in regenerative medicine, the technology behind this cream with a rejuvenating effect helps support the skin at 
		every level: the skin matrix is redensified, the epidermis is visibly rejuvenated and the skin barrier seems strengthened and protected. Skin looks denser, facial contours appear enhanced 
		and wrinkles seem smoothed. Skin regains its radiance, and its volume appears restored. These ingredients have demonstrated biological efficacy, supported by rigorous laboratory skin 
		testing.', ' Rosapeptide , Rosa Canina Seed Oil, Vitamin C', 'Prepare your skin with BioMoss Glow Booster Serum; continue your skincare by applying our age-defying cream to your face and 
		neck after cleansing for best results. Patch test before use; if irritation occurs, rinse off, cease use and consult a physician. Use only as directed on unbroken skin. Keep out of reach 
		of children.', 100,'Oil','Rose extract, Vitamin C, Rosa Canina Seed Oil, Malva Sylvestris (Mallow) extract, Avena Sativa (Oat) Kernel extract, Tocopheryl Acetate, Sodium Hyaluronate, 
		Adensoine, Lactic Acid, Acetyl Hexapeptide-8, Palmitoyl Tetrapeptide-7, Urea, Squalane, Caprylic/Capric Triglyceride, Butyrospermum Parkii (Shea) Butter, Cocoglycerides, Glycine Soja 
		(Soybean) Oil.');
   
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng) 
	values (501.001,'BioMoss Hydrogel Cleanser',30.00,'30 ml', ' A moisturizing all-in-one cleanser, BioMoss is formulated to clean skin by removing makeup and dirt. This cleanser also 
		supports your skin’s moisture barrier through hydration. Its skin-cleansing properties harness plant-derived squalane, a well-studied moisturizing agent, alongside lipophilic esters 
		that will leave your skin feeling smooth and soft while dissolving makeup. The formula is non-comedogenic and soap-free so it’s gentle enough for daily use, suitable for all skin types, 
		and suitable to combine with our other products.','PhytoMara, MaraFucoida, Algae, Phytosqualane, Niacinamide, Vitamin E, Botanical Lipids and Sea Buckthorn.','For morning and night use, 
		apply with dry hands and massage into face and neck; add a little water to activate the transition to silky milk, remove with warm water or cloth, followed by a layer of our BioMoss Daily 
		Natural moisturiser for AM use or our BioMoss Night Repair Cream for PM use for best results. Patch test before use; if irritation occurs, rinse off, cease use and consult a physician. 
		Use only as directed on unbroken skin. Keep out of reach of children.', 100,'Gel', ' Glycerin, Caprylic/Capric Triglyceride, Phytosqualane, Fucoidan, Ascophyllum nodosum Extract, 
		Ascophyllum nodosum Powder, Tocopherol, Niacinamide, Hippophae Rhamnoides (Sea Buckthorn) Oil, Ricinus Communis (Castor) Seed Oil, Citrus Aurantium Dulcis (Sweet Orange) Peel Oil, 
		Helianthus Annuus (Sunflower) Seed Oil, Cananga Odorata (Ylang Ylang) Flower Oil, Botswellia Carterii (Frankincense) Oil, Aqua (Water), Sucrose Laurate, Sucrose Stearate, Sucrose Palmitate, 
		Phenoxyethanol, Linalool, Limonene.');
insert into products (pCode, pName, pPrice, pSize, pDesc, pKeyIng, pDirToUse, pQuantity, pFormat, pFullIng)
	values (501.002,'BioMoss Hydrogel Cleanser',80.00,'90 ml', ' A moisturizing all-in-one cleanser, BioMoss is formulated to clean skin by removing makeup and dirt. This cleanser also 
		supports your skin’s moisture barrier through hydration. Its skin-cleansing properties harness plant-derived squalane, a well-studied moisturizing agent, alongside lipophilic esters 
		that will leave your skin feeling smooth and soft while dissolving makeup. The formula is non-comedogenic and soap-free so it’s gentle enough for daily use, suitable for all skin types, 
		and suitable to combine with our other products.','PhytoMara, MaraFucoida, Algae, Phytosqualane, Niacinamide, Vitamin E, Botanical Lipids and Sea Buckthorn.','For morning and night use, 
		apply with dry hands and massage into face and neck; add a little water to activate the transition to silky milk, remove with warm water or cloth, followed by a layer of our BioMoss Daily 
		Natural moisturiser for AM use or our BioMoss Night Repair Cream for PM use for best results. Patch test before use; if irritation occurs, rinse off, cease use and consult a physician. 
		Use only as directed on unbroken skin. Keep out of reach of children.', 100,'Gel', ' Glycerin, Caprylic/Capric Triglyceride, Phytosqualane, Fucoidan, Ascophyllum nodosum Extract, 
		Ascophyllum nodosum Powder, Tocopherol, Niacinamide, Hippophae Rhamnoides (Sea Buckthorn) Oil, Ricinus Communis (Castor) Seed Oil, Citrus Aurantium Dulcis (Sweet Orange) Peel Oil, 
		Helianthus Annuus (Sunflower) Seed Oil, Cananga Odorata (Ylang Ylang) Flower Oil, Botswellia Carterii (Frankincense) Oil, Aqua (Water), Sucrose Laurate, Sucrose Stearate, Sucrose Palmitate, 
		Phenoxyethanol, Linalool, Limonene.');

insert into promocode (promo1,promo2) 
	values (123, 'bio20');
