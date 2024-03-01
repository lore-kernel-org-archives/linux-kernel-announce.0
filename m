Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528C23E47F
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 13:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709298048; cv=none; b=pOluwocByJgYm0R463IwI+F3S6sQkPJFs1NWziNwSoE1emE7Zi6+U4tqE/TxBmatHIx7btsPOjFndrlDhKyTS9n7mIzFp540YRC3aKvKmZAGWPWjnuA27kTPHInYGGiTH5KsbtkwUhv+CcbMIA6A3O/5LJWEmRAKD+QzFETFOhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709298048; c=relaxed/simple;
	bh=uE8y7TGX8V/dWaRNvq/gbd1nfoDUnVYr3s+8o7ARZsg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=szCcFE1GMyK+LVPx1UeDgp1Ydto3eFDJHb6OHrVH7b9UT9W98P6Lt3WW0wdw+N2T3bX17VUf5cQR/FxJXTEfcTFDC2JzIkTK9sqPNWitSPmnbKygfha9imzA6Cj2AybiZ3j5WbLDgwFf8w/GW9+Io6iEqeOgZBt9R0hjqiMctoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709298048;
	bh=uE8y7TGX8V/dWaRNvq/gbd1nfoDUnVYr3s+8o7ARZsg=;
	h=Subject:From:To:Date:From;
	b=oHVss3aZUtw+YJTHZBKupDrw/2tlFtQJ50zHeHJ9AHPhjwSmqwZrIvwgMGEp1VILj
	 nM6u9a5B0p+5a6wfU9as44zExiZUe64uZC61w7fSzX3YQeozuvfTEUoLVucFTTZjiS
	 UgCQXFGZ05eyaPFxAE7viGIusXeK1hbrJ5S7vUww=
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD7CC433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 13:00:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C5055D990B1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 13:00:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Mar 2024 13:00:47 +0000
Message-Id: <20240301130047.release-6.7.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.7.xz

Linux kernel version 6.7.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.7/v6.7.6

