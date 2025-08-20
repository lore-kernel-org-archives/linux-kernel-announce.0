Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3EC33A008
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Aug 2025 17:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755710130; cv=none; b=XADRAF936h02Posp9MA+sBrI/kQ+vU8eqQmrUUl3te9YCcBF/oT6IddrFhWMMpj6h7zXDbdyARdRIJngIGqWwvEt2+UkDlkoPe5iJ86+mC606mKMyt1R8PwIaE1Hl1eSmYY9pLs6HH3wh+Mo2j0wGvDS29tqataeN+ku+zqW700=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755710130; c=relaxed/simple;
	bh=eurNRqE9KyWDAjDGnlzKQMGGD/wMTvyQ6PrWdIfcefg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=c5KtnWViw5mZmzk+mN882tLTMiPTnmat9xnmG54AKMsyXF2vI+NZ3WiqqRq7Ew/6Os2UtJUwGOpdmE7Lw5IrugYYdMR58nbyjKjzZYGii6XcVbfydM6+FocKiy1wmlH9u5NDsUz/Ojpx3ymByatiOh6H3UQ9V2Kr8KgrNlIxOxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755710130;
	bh=eurNRqE9KyWDAjDGnlzKQMGGD/wMTvyQ6PrWdIfcefg=;
	h=Subject:From:To:Date:From;
	b=MNzgo+JxJtEoblgHl0b4JKGhlcODKaV2TJhpUZvkd32/z4ZWYFMIFBiQk0cnLvLRU
	 LlNFWGuAc0KZeMmkl7HSAqNz/4CUQutQhvkbxk8tO3ivHpHheymZ8ZCqJin4eiWcA9
	 USEkLO8QLFrHf7LHuI5Hp6njv6PldoilOUfgbEXg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30470C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Aug 2025 17:15:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB39A383BF57
	for <linux-kernel-announce@vger.kernel.org>; Wed, 20 Aug 2025 17:15:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 20 Aug 2025 17:15:39 +0000
Message-Id: <20250820171539.release-6.15.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.11.xz

Linux kernel version 6.15.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.11/v6.15.10

