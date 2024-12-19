Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAD219D8BD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734628839; cv=none; b=ZRxwA4clDubMOvxn3Fca9xo9aW/YYkISsFFqnSgApvYqPlFQaQWt0OzvniEV7saHdMsBMkdUrOyuEu70TFxOPes1IWcr3WQoP1kKf06/7onKLi53QbJG8qFIDf0BrDmhoCpZ6R5eYkV4+Kh4dZVKpGBRnFeEAUluFWSJSVwVYWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734628839; c=relaxed/simple;
	bh=ru0j9xp/vPQJ5MSQuFMvNOySs9OtH6eeNglesEr3WDA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=IagyNmw9m/qc39/9OoYMZAv2yXz/j/O0VhnZyR57jKkaMIgPJKDYw5t/QlUJzwDvWQLhO7ldEKI/3XnWQflLmrvo35yZqUYtE2NypaDGn3Z8RwbqAoGvOvOAUgHkGxB6zWdP6xyxlcAzGzHHyqaMguCpGmQmE/l6pAEp13Ehobs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734628839;
	bh=ru0j9xp/vPQJ5MSQuFMvNOySs9OtH6eeNglesEr3WDA=;
	h=Subject:From:To:Date:From;
	b=NNeMF4uImFMHvJKmcsyj9AFm6QZnP1QWEd4RyHmDr6MFwv3Dz28fmz/WvqJq46BV3
	 83PIHDu7D7rQFPG/Org5w/kg2YXIPy/WvKhCVxrYBKOM0FwmKI+iHCaNwk2DEGXaPa
	 uD61teaQl9kOKtjUVqPQvhw0BY0yldbWbWYi85eU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03373C4CECE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:20:39 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B3B0A3806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:20:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.232 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Dec 2024 17:20:56 +0000
Message-Id: <20241219172056.release-5.10.232@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.232
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.232.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.232.xz

Linux kernel version 5.10.232 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.232.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.232.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.232.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.232/v5.10.231

