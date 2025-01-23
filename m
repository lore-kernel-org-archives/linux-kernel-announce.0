Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4472A1AA
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737649847; cv=none; b=nqk8mH8Ffqf/6P+ZeTDvTDYW0lCOi8UAPqcbjIX6XryaZX6SWuPGOz90c2oF7O2JP+jRRCFgeBKtngdC1Z/PC/oHbCFmF1ma5/H+tQKZalDQZHmRpu5Xkl9l/qp6JONMaYup9MLn9wxTlen3XwxquB+RyozfqAoLyhGNB0voHmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737649847; c=relaxed/simple;
	bh=y/4DYHqpr7w+Nuz7xecyzu/zm8uRqWMStSKVCkrvJAA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=r+Ng5w1Le0CqmktEj2i2MyCHvPqs8Ae4ShCPR/opy3c78UzYuWOdoumms140fCbusknNr6/km9ja6pVxTu8naWR8djgyFAyjhYGMXYo+TezRXL6zjcJpmRbIBDlzNSHy0USFa28cKL24A59hIkB8ufFpCjcN+holnWPUF9dubRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737649847;
	bh=y/4DYHqpr7w+Nuz7xecyzu/zm8uRqWMStSKVCkrvJAA=;
	h=Subject:From:To:Date:From;
	b=GCKdIIIxLHe6jTM+OTsH3U7bYS+Kz5WydR5Oc6u7VXd0PWLV2CgEg764GvHapu3bJ
	 CWm/rXSO+I4PYNLzd3Qk+SPMLMcZj6Su1HF9dVnjpsg8THZqIIkQM/Re30AZv/cmFX
	 XBkRvSs6MmRQEBc7VULqR+HNqeFLbZ8NXi0D3BIc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB98AC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:30:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1E80380AA79
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:31:12 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.177 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 23 Jan 2025 16:31:11 +0000
Message-Id: <20250123163111.release-5.15.177@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.177
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.177.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.177.xz

Linux kernel version 5.15.177 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.177.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.177.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.177.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.177/v5.15.176

