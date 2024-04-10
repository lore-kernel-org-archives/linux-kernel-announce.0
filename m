Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F3D171679
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712760943; cv=none; b=mEDXpoVWE3vRyhrWkbarnZikT+bmoiNsiVYpFinarh8WXhBeIopAMlGFDWr+yrYRnoyvWeztDY+qKYgegiTHL9ctWg0hh1iysS1I1lHOyEvI0vofXGgYNidH5zGo+HhXI0jZyjjxw2KYRNDudp+UbmJQvE/sYBXj1AucfGO1PZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712760943; c=relaxed/simple;
	bh=kz1xv8GeKUOkE3noS6kGp9H8h/0vtsys/8O7avtcoBI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sYz09F6/6TpJQMEXLOtLYtEVGNnL7yG0H9Q5V8F3Wsjpx24MRfH20olEGYTV6IjAfEzmE7zU7u9KCvgISfh9fT7XfG0h5ShVjoTi+soRUxHzGme22pWrQQJUA4u7roFX1LYnPWuu1uk583KMzCETJDiShC5esROq8vrXbhVuT/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712760943;
	bh=kz1xv8GeKUOkE3noS6kGp9H8h/0vtsys/8O7avtcoBI=;
	h=Subject:From:To:Date:From;
	b=Z7ivbj2hQPQzMkSd4v0OsHjaYAOOvaF2BdMBWiOg2OCD8U6MwpzcOBWFR5CwsPQp0
	 qc31RxCPjTAjH8ff4tIT7fNwoYP3MI9Aw2XFqjtJdboLrXTHFya70RUMKdD1S/FhFH
	 mryyOef3LZ/5rtk2sKOl9xQhw4BuGmfmt0LS1Q7M=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E00C433F1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:55:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 865FED60310
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 14:55:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.26 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 10 Apr 2024 14:55:42 +0000
Message-Id: <20240410145542.release-6.6.26@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.26
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.26.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.26.xz

Linux kernel version 6.6.26 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.26.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.26.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.26.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.26/v6.6.25

