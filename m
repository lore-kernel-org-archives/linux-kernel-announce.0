Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C5C17FE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737650723; cv=none; b=lQaPrrinoLvP6HePxIsE6yXpZZSdtLfatU2wL9JsnEbz1SQ1WScFA6YfraUtkhcyW3mJTs3FDU20Jaw+MLlMtJ61mHNns84lfvJBO/+o9i4udxTq2Kxm9LBBb3lth3WJejpGOnmAphaRwIBE9D7tXJqtQlIW+XzDkYPcRwVC5Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737650723; c=relaxed/simple;
	bh=h5pbtCHIk9OwYNKqa2hwnUYiMLdCcv3rSDoKuPSVScg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jbuJCy0wyLGz+tCEEyZAT0NXL7YJ8VoBDqm5v1rgZubvyT4k4NM/IFDLB7JJ7N4GsYgqJWqYj34ypquylRY7mzn8BvjooCSWcfu7oGQvgthZ99dGutuxsYXYHUFYTuhBp6LRQ9DfebSofWf/uIwXQB5bcwRWx3qAdF42aU2B3+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737650723;
	bh=h5pbtCHIk9OwYNKqa2hwnUYiMLdCcv3rSDoKuPSVScg=;
	h=Subject:From:To:Date:From;
	b=WbOUyJkwaZ9bp+yyUddJhPMvi1Y7EEsh/PH+bKgYt/X1mm+LyaX8e/zQS/oQ0kZ2f
	 zk2Mdcx8PMPu4XBbOhmNIZ7VjChQXAmCSAAxJQ0N+Bvcdfiw3MQ5H+HrJeXK+u4Gtu
	 Vamh8thuqdoJgRmGNALiQAvocpbHoQ1rXGLXqkzc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAB1FC4CED3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:45:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B500B380AA79
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:45:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 23 Jan 2025 16:45:46 +0000
Message-Id: <20250123164546.release-6.12.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.11.xz

Linux kernel version 6.12.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.11/v6.12.10

