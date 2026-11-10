Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794336024;
	b=vz/CyGnzYrjJCf4N1hXbkA73Tn5qvyarcIl1xkKHQaPXOPlsvFc2lq3F+NNhK4nJyiGm
	 6K6v8eqfMqbsxkaksViCgNKuQeeA5yCW3tBKYIQ4qKG9o7k+tSoYNWBkfZpay2ORWgqrK
	 8j1GbYHhYAlZAOyYGq8DqqX/cMTBeJXh+PWlJTnudNcGSiahYSrljnVn/fZ7wajp/CnhE
	 h/JAOzfLiMFKmnTLAlLlwIFZC191RZEMJbbXWelkuHhOHN5XS+b0potvGLsVh/4Z0UQvx
	 1JY3aWbdAPNWsJZ8se3OndtprTHyVKNqLA7EDktcuf4VdHnBLufxZDYea55c1EgTNkg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794336024;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=cFCAgDMT+oQ941NUsFyzZ/Zdwr67seSRP4D2fAwA5/E=;
	b=IQhuqdtpbwpoH0BhpldRTgLrZI3KP26a/ZwSgp9O73h/ZaE0KN2uD7N7BCrPlueDZueZ
	 ZF5xrnIluSDozfaWufDQvhXxG04cProUu8tTXUWrUEUJ03HzVKCNHh+lpan+1CFgBrixj
	 BS64a5sn1g604P0iAc0OGumIDL8mX21GoLczaRMCx1LcCCN8QNCUkq4wXpCqywgQGuTFf
	 sYh2wuBlU+BqYIxVkPTBZLlsCa6ISyPtDtLRrakDdUaYEJyKKzBQdEfPrVInt7GnkYq3+
	 tlrFlqcgAv/qaTYWH1S/NyahT5o51/1TJcc7BTHxaSZjxfZbBJWlK9DT7MrBmkd0vHw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D085606A915
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1794336024;
	bh=cFCAgDMT+oQ941NUsFyzZ/Zdwr67seSRP4D2fAwA5/E=;
	h=Subject:From:To:Date;
	b=TbJa11eGLjvSGl5xTEE57+gwUyDGUL2BA+Hgez4V0VOAKKffXtu77coIRQ5wXd3C2
	 PDemUPK7ZLPlyBDKxJCqBkhtfRNKHdI+AS+zLhTqCFf2rInNGhfBmvrguD4Dq+GAOl
	 s408M0IQXzFGpobFGYVQdf6h4ZBVVz7PkqtsjCbowpBDPJkJMvw1aWPKaEO03sCVCN
	 NnnZ+Tw1mDR9jLUcLfkvEuSmuwbUzitaO/h3smeh4WWAHQyqhOcwa2S53Rf3ABMNx2
	 xt+HKU6eKQbcEGxlSSFnnkcqa9x3azyOJpomKZq3RpoSmV4AFFHJIv1YSLIivxXrZk
	 MwY2JGH+wz5UQ==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A907C1F008A2
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:40:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9EED839D6098
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Nov 2026 18:40:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 10 Nov 2026 18:40:22 +0000
Message-Id: <20261110184022.release-7.3.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.4.xz

Linux kernel version 7.3.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.3.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.3.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.3.4/v7.3.3

