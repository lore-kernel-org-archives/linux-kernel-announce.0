Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9B2220F29
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770815424; cv=none; b=un8NkG08AQeqUQNAVQji5is7+wcMDxBXaQLClQOy3zUNNlZW4780FCuBC4bpZE9NfspDZHLWo9H5G9ZgBCWI6rUHe8yS/nRrpO3O1y/wAtWgy/lNiNNnI+wKKtFD9KxZwq1xJe/5rbnhqEPpOIH2WnVfjW3+ywHLovU1X64NQjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770815424; c=relaxed/simple;
	bh=8wCouJo+VEaycxkLrYS5fQhbvXekThT4qpWSM6ddtbE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NF6Bsf+FkVELbQczZPigQ/g5lbK+Zv/JzHtS4Y0YpBsQkkq1M2zBx1H0p17L5fMADqs+HTwWTKmQZo/fcq5zR1dg/6HKeJDUV+1TGlrWdKyVDPfKmh81pjNIiNFpkxaIBwcLo5npFno10iNzWhNYYzpropSkp34krGIcVMJoUYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770815424;
	bh=8wCouJo+VEaycxkLrYS5fQhbvXekThT4qpWSM6ddtbE=;
	h=Subject:From:To:Date:From;
	b=MqPZjKZB65lDScO4tnd2nVwzInQXLfaz5wDzj/DdsOyP4UBgsKo4YvquorTzHgyuN
	 KGP11wmGuB3P2SynENAy7O8ZSOuM1zrBLePdBwhphz9cP/DBy3LkYTHtBdz6YENQdk
	 OOm3HPrakU3s0QlyvKEznhSug/OrmfiQ2YFlqlN4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8141AC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 13:10:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 87A0A39E961C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 13:10:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 11 Feb 2026 13:10:19 +0000
Message-Id: <20260211131019.release-6.18.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.10.xz

Linux kernel version 6.18.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.10/v6.18.9

