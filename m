Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A68A22759C
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 11:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778238076; cv=none; b=ZjbqsLQyENJNAYnGKsDfC1O2iGjQwtVDbgVuJ0oCwO4rUzus+pjJtpfBKjZlgGcCZbAGgCS8RdaIVpkCrezsTKPLKCFhqMPlo4O2ghvuNWzQnyiqvuRYi9WqEBe0ROApuLKalQHjTO6ANnxEPoSDdxQxBtdE1bNOBsIGz1XvEG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778238076; c=relaxed/simple;
	bh=2T2RbN31OqYDB8eZHFJX3IjkbeBopYJWBl+UkH044BA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JM4SPsPzk+S/UnSpVva1HoOisFT2Zo3L13uKUBmWmjeaa/ojwaypC1BCHJqjeHmThRPVyfcVqC3g7NWbmCJd6j9fBP/d7SxBhZKP0BbfuhlJ4G6ieeR2aea7SBr2D7xrqZFXgaRCqZ8pOLg89QwzTIH4T0GlzGuR8AZtWPEucVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778238076;
	bh=2T2RbN31OqYDB8eZHFJX3IjkbeBopYJWBl+UkH044BA=;
	h=Subject:From:To:Date:From;
	b=grhedakJ0XFOpz+C9jLQQKq4Ot0rjc2W0n02IQqwT9BXDE+0Zw8Bp3f3KO3EQ0v8u
	 3s3TXD+C16CutMeflqdSOgFXFW1JSzhSQi6U4eQF+htx/yLwjhHU+KN31LaL6uITdY
	 WNIG3IWIomzZtWqfcDtVX0QcwVQXsDn+GBaGvCq4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1498CC2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 11:01:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 057A1381195A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 11:00:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.171 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 11:00:24 +0000
Message-Id: <20260508110024.release-6.1.171@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.171
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.171.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.171.xz

Linux kernel version 6.1.171 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.171.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.171.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.171.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.171/v6.1.170

