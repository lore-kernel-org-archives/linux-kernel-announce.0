Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33391E48A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735305028; cv=none; b=rL2+RuTCnSAJCAy/3bO9/D6F99tnNTIXEJJeiuTOYWrMOQxz4oRmmN5XN4fan76YRUgmBkOMn2AhhizJHeDI5/5vyRcvTryxTgvB8hOVs7rzZ5qscELwiPq0xXd8oBYxwSc58Z+lz7jEy3yugl9eVm/ITlS03Iy4xN2R/QmfOYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735305028; c=relaxed/simple;
	bh=YHvNvrrfQdZDpLSvhN6G0Q0xbwSvaXZuG/D1DUtqT+4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rLn0eQ8kqdT6OxytoLzRwunIB7i0503AYjr9T4pmhiSK7qBF1GST7C/VVgNpMLTqqDXhNrQzhD5DzPwpwQdFvNG5fL+ohzx+SlZ7QNwMuKS71Jn7WWY+BX1l38lRb2u18lMwBfhhPTxZhY48PDZjvT8ldjGOGLyp6m8I6fCGtBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1735305028;
	bh=YHvNvrrfQdZDpLSvhN6G0Q0xbwSvaXZuG/D1DUtqT+4=;
	h=Subject:From:To:Date:From;
	b=qU8mP+8UXpFgYKCXb4oZS0nhaYetTJbW+tRnlOlTZ+OSnZ4Qt08G6xVdG2cNS773G
	 5/87WLw5+/Hma96wD/7A1hvgdw+rnlMDcvJMocyuNlBPXfaIjlNkJONJrKHKrn9t9p
	 2LyjCLNQY0mSMd5xAe9bvnA8sk9/QpcuXe4OKPMQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C518C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:10:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75372380A955
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:10:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.122 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Dec 2024 13:10:46 +0000
Message-Id: <20241227131046.release-6.1.122@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.122
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.122.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.122.xz

Linux kernel version 6.1.122 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.122.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.122.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.122.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.122/v6.1.121

