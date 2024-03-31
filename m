Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB2614532A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Mar 2024 22:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711924134; cv=none; b=C1Ael1bkN1EIuAnPzPPNyqgViLWx8rCD8jn16m/XstJjIWTbKgLO+W2z0nYWSY+sa4RYqGtKbLdFYDcaohCwldv2ROzFacW3qJ43TM5rxO8O7VgCzg5zUU7VDFLYUItGuTiSmGG93A+Rw6jL0tIdzotL5opeE6qsGW73q3MOTww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711924134; c=relaxed/simple;
	bh=WGyTjFBGVxR9Rbl7gwVOA6TZC8RN0FttTSsIkN9NIes=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gEG30rc4s1eDHOE2KVpVCUFKNE66GGOboi9NZaawL46nE7tHhs8yrMyUS4480nfp7ig6Bvr/cd2mNIkphKCo5YcidoJek/JsOFJOM5ysxFqlHD7TOY5miz/iTuSkKdFpC4z0/cVSpKy8EjlO5NO4mLkyKdOI+nlgoWPdr6rwFw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711924134;
	bh=WGyTjFBGVxR9Rbl7gwVOA6TZC8RN0FttTSsIkN9NIes=;
	h=Subject:From:To:Date:From;
	b=m0nbd/KE/Vbu8BljQAs7Td09u5E3/YhDkQTMzTUaWLMzmI0D24TADIJn2aHasemPh
	 Bl2Xa09JN+q5wzziceUDD+EUi4ra8AyXSRpy4LqqIF6ziOujNDvPvp8Vfhn3eIcKnO
	 alqy4v7tdZA58rvFVAsfxueZwdjDd/OjzDTODXow=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC97C433C7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Mar 2024 22:28:54 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6140AD9A150
	for <linux-kernel-announce@vger.kernel.org>; Sun, 31 Mar 2024 22:28:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 31 Mar 2024 22:28:54 +0000
Message-Id: <20240331222854.release-6.9-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.9-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.9-rc2/v6.8

Linux kernel version 6.9-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.9-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.9-rc2/v6.8

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9-rc2/v6.9-rc1

