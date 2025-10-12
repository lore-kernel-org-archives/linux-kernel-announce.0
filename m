Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315BF22CBD9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 21:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760304362; cv=none; b=dOdwye5cEXlPbXGYZEKxiNAV56oGq2nSbamjXgRqFhXub41lCPtIkBk03TPJmy5A7wie5qJSmsU5koywUVF8agPJ5lc9fajmBr7jqwAh7mOWTxg/Tk3DnbKVpJDTGQIDvQDIK5cHoVa8Ow1x+nSQrmjISkAS+YweClnxM08cm2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760304362; c=relaxed/simple;
	bh=t2RpfZXZKvmayiKiJPf+dCqdZsIEROqYRFrS2DMaliI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qrkFQv+ow/h1WqOib/GQ99DeCIgqexQ6eqr5pPyGAG0oqb80dz9lRnX8KP5uu+zEH3T4CQ9N6TkXV02ib1Tk2DZklSTPppYnXVJpzs+A96T/kfZrVjLayuOe92M++wLvp0vBwsyC3MOc+uJ73dfiOn21wFZ10m3QLUKIIEZ1EG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760304362;
	bh=t2RpfZXZKvmayiKiJPf+dCqdZsIEROqYRFrS2DMaliI=;
	h=Subject:From:To:Date:From;
	b=Oy+Nusj18h2t1t9JWA2JKdrqhmhs92CXXtwH1EWnwoquDM5k+sTyN66WckY6/aMDF
	 f0uuEo9LDGIC01Cy1piykDTaLVkaHXFh7n3T/NUO6N4ZWCYWSjMM0MVZ6o1sHDUJ3L
	 5nZvUTdCH2/QJl5DBbBnLqgxavweXz/eAkZH7q+g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F88C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 21:26:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF2F63809A25
	for <linux-kernel-announce@vger.kernel.org>; Sun, 12 Oct 2025 21:25:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 12 Oct 2025 21:25:47 +0000
Message-Id: <20251012212547.release-6.18-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.18-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.18-rc1/v6.17

Linux kernel version 6.18-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.18-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.18-rc1/v6.17

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.18-rc1/v6.17

