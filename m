Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A7526AF4
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630428; cv=none; b=uV9PQsYeyIzexJ/Yb1ZMQN5Q2XSWHyvw75ZcAO+nho5Z0A73sJOIWQRCbV/k5802E7lift+h4meQn8AG1x8/SytbUEDxG/qNgl8D9MEybVaM+P8UbP1YkmSN9OGurKIPjLEJGrTrpTZISr+pwSR4qBip3MzINtHUButBSv/da0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630428; c=relaxed/simple;
	bh=+bW/PX6hfazGmL9fKiJGMSQSVa1qpnz4hH3u/SFa37Y=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XKH/UYkkc3NGvYsOPqUUQfk2qEnDOImuWGer1P1rcp/PLi5yINCMCKBr1HeJN/GX2vCe7hWA7LhollbGZ31Pq69UCf4tGnZEKXMfxk8APu3sbLxxG9ZjqiANtJQe1YLsnm/pyIhXnDyiW8XjdIfY7uo4010yL7xBy/QVS7jzML0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772630428;
	bh=+bW/PX6hfazGmL9fKiJGMSQSVa1qpnz4hH3u/SFa37Y=;
	h=Subject:From:To:Date:From;
	b=Xva0leHaK/rdFDdmIa2v93dQ86aodpLful0gswmYeDL/UqK2OcoY2gKP3r51vn7tk
	 JUBHxPEUNtXIrP9dFAvjUNgyUfDc3FacMJ3ib+GDXOcYZhgRpqHZBrXmvuy2aD72T9
	 OBeUqKWuws6h+QmGRBECr83xmmc4O5q6NpsxZsYY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69F46C19423
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:20:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42E433808200
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:20:30 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Mar 2026 13:20:28 +0000
Message-Id: <20260304132028.release-6.19.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.6.xz

Linux kernel version 6.19.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.6/v6.19.5

